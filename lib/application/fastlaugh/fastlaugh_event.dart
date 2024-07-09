part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughEvent with _$FastlaughEvent {
  const factory FastlaughEvent.intialise() = Initialise;
  const factory FastlaughEvent.likedlist({required int id}) = Likedlist;
  const factory FastlaughEvent.dislikedlist({required int id}) = Dislikedlist;
}
