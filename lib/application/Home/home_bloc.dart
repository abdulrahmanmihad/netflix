import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:netflix/domain/home/homeservice.dart';

import '../../domain/home/homerespo/homerespo.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final Homeservice _homeservice;

  HomeBloc(this._homeservice) : super(HomeState.initial()) {
    on<Gethomeresult>((event, emit) async {
      emit(HomeState(
          pastyearmovielist: [],
          trendindnowlist: [],
          tensedramaslist: [],
          sounthindianlist: [],
          toptenlist: [],
          isLoading: true,
          isError: false,
          stateid: DateTime.now().millisecondsSinceEpoch.toString()));
      final _result = await _homeservice.hometvdata();
      log(_result.toString());

      final state1 = _result.fold((Mainfailures failure) {
        return HomeState(
            pastyearmovielist: [],
            trendindnowlist: [],
            tensedramaslist: [],
            sounthindianlist: [],
            toptenlist: [],
            isLoading: false,
            isError: true,
            stateid: DateTime.now().millisecondsSinceEpoch.toString());
      }, (Homerespo resp) {
        final pastyear = resp.results;
        final trendingnow = resp.results;
        final tensedramas = resp.results;
        final sounthindianlist = resp.results;
        final topten = state.toptenlist;
        pastyear.shuffle();
        trendingnow.shuffle();
        tensedramas.shuffle();
        sounthindianlist.shuffle();
     
        return HomeState(
            pastyearmovielist: pastyear,
            trendindnowlist: trendingnow,
            tensedramaslist: tensedramas,
            sounthindianlist: sounthindianlist,
            toptenlist: topten,
            isLoading: false,
            isError: false,
            stateid: DateTime.now().millisecondsSinceEpoch.toString());
      });
      log(state1.toString());
      emit(state1);
      final state2 = _result.fold((Mainfailures f) {
        return HomeState(
            pastyearmovielist: [],
            trendindnowlist: [],
            tensedramaslist: [],
            sounthindianlist: [],
            toptenlist: [],
            isLoading: false,
            isError: true,
            stateid: DateTime.now().millisecondsSinceEpoch.toString());
      }, (resp) {
        return HomeState(
            pastyearmovielist: state.pastyearmovielist,
            trendindnowlist: state.trendindnowlist,
            tensedramaslist: state.tensedramaslist,
            sounthindianlist: state.sounthindianlist,
            toptenlist: resp.results,
            isLoading: false,
            isError: false,
            stateid: DateTime.now().millisecondsSinceEpoch.toString());
      });
      log(state2.toString());
      emit(state2);
    });
  }
}
