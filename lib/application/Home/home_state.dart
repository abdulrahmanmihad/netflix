part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
   required String stateid,
    required List<Homeresult> pastyearmovielist,
    required List<Homeresult> trendindnowlist,
    required List<Homeresult> tensedramaslist,
    required List<Homeresult> sounthindianlist,
    required List<Homeresult> toptenlist,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HomeState.initial() =>const  HomeState(
      pastyearmovielist: [],
      trendindnowlist: [],
      tensedramaslist: [],
      sounthindianlist: [],
      toptenlist: [],
      isLoading: false,
      isError: false, stateid: '0');
}
