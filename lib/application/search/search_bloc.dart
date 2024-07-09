import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/search/model/searchresp/searchresp.dart';
import 'package:netflix/domain/search/searchservice.dart';

import '../../domain/downloads/models/downloads.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final Idownloadsrepo _downloadsservice;
  final Searchservice _searchservice;
  SearchBloc(this._downloadsservice, this._searchservice)
      : super(SearchState.initial()) {
    //idl state
    on<initialized>((event, emit) async {
      if (state.idlelist.isNotEmpty) {
        emit(SearchState(
            searchresultlist: [],
            idlelist: state.idlelist,
            isLoading: false,
            isError: false));
        return;
      }
      emit(const SearchState(
          searchresultlist: [], idlelist: [], isLoading: true, isError: false));
      final _result = await _downloadsservice.getdownloadsimages();
      final _state = _result.fold((Mainfailures f) {
        return const SearchState(
            idlelist: [],
            isLoading: false,
            isError: true,
            searchresultlist: []);
      }, (List<Downloads> list) {
        return SearchState(
            idlelist: list,
            isLoading: false,
            isError: false,
            searchresultlist: []);
      });
      emit(_state);
    });
    //search state
    on<searchMovie>((event, emit) async {
      log('search for ${event.movieQuery}');
      emit(const SearchState(
          searchresultlist: [], idlelist: [], isLoading: true, isError: false));
      final _result =
          await _searchservice.searchMovies(moviequary: event.movieQuery);
      final _state = _result.fold((Mainfailures f) {
        return const SearchState(
            idlelist: [],
            isLoading: false,
            isError: true,
            searchresultlist: []);
      }, (Searchresp r) {
        return SearchState(
          idlelist: [],
          isLoading: false,
          isError: false,
          searchresultlist: r.results,
        );
      });
      emit(_state);
    });
  }
}
