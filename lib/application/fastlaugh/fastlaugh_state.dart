part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughState with _$FastlaughState {
  const factory FastlaughState({
    required List<Downloads> profilepic,
    required bool isLoading,
    required bool isError,
  }) = _initial;

  factory FastlaughState.initial() => const FastlaughState(
        profilepic: [],
        isLoading: false,
        isError: false,
      );
}
