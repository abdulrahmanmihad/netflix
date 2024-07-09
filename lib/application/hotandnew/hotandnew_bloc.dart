
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:netflix/domain/hot&new/hotAndnewservice.dart';

import '../../domain/hot&new/hot_and_new_resp/model/hot_and_new_resp.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@injectable
class HotandnewBloc extends Bloc<HotandnewEvent, HotandnewState> {
  final HotAndNewService _hotAndNewService;

  HotandnewBloc(this._hotAndNewService) : super(HotandnewState.initial()) {
    on<Loaddataincomingsoon>((event, emit) async {
      emit(const HotandnewState(
          comingSoonList: [],
          everyonesList: [],
          isLoading: true,
          isError: false));

      final _result = await _hotAndNewService.hotandNewMoviesData();

      final newstate = _result.fold((Mainfailures failure) {
        return const HotandnewState(
            comingSoonList: [],
            everyonesList: [],
            isLoading: false,
            isError: true);
      }, (HotAndNewResp resp) {
        final movie = resp.results;
        movie.shuffle();
        return HotandnewState(
            comingSoonList: movie,
            everyonesList: state.everyonesList,
            isLoading: false,
            isError: false);
      });
      emit(newstate);
    });

    // on<LoaddatainEveryone>((event, emit) async {
    //   emit(const HotandnewState(
    //       comingSoonList: [],
    //       everyonesList: [],
    //       isLoading: true,
    //       isError: false));

    //   final _result = await _hotAndNewService.hotandNewTvData();

    //   final newresult = _result.fold((Mainfailures failure) {
    //     const HotandnewState(
    //         comingSoonList: [],
    //         everyonesList: [],
    //         isLoading: false,
    //         isError: true);
    //   }, (HotAndNewResp r) {
    //     HotandnewState(
    //         comingSoonList: state.comingSoonList,
    //         everyonesList: r.results,
    //         isLoading: false,
    //         isError: false);
    //   });
    //   emit(newresult);
    // });
  }
}
