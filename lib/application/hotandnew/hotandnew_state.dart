part of 'hotandnew_bloc.dart';

@freezed
class HotandnewState with _$HotandnewState {
  const factory HotandnewState({
    required List<HotAndNewData> comingSoonList,
    required List<HotAndNewData> everyonesList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HotandnewState.initial() => const HotandnewState(
      comingSoonList: [], everyonesList: [], isError: false, isLoading: false);
}
