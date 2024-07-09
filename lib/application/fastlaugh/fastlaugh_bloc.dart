import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';

import '../../domain/downloads/models/downloads.dart';

part 'fastlaugh_event.dart';
part 'fastlaugh_state.dart';
part 'fastlaugh_bloc.freezed.dart';

final dummyvideoUrl = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4"
];
ValueNotifier<Set<int>> likedvideoidnotifier = ValueNotifier({});

@injectable
class FastlaughBloc extends Bloc<FastlaughEvent, FastlaughState> {
  final Idownloadsrepo _downloadservive;
  FastlaughBloc(this._downloadservive) : super(FastlaughState.initial()) {
    on<Initialise>((event, emit) async {
      if (state.profilepic.isNotEmpty) {
        FastlaughState(
          profilepic: state.profilepic,
          isLoading: false,
          isError: false,
        );
      }
      emit(const FastlaughState(
        profilepic: [],
        isLoading: true,
        isError: false,
      ));
      final _result = await _downloadservive.getdownloadsimages();
      final _state = _result.fold(
          (l) => const FastlaughState(
                profilepic: [],
                isLoading: false,
                isError: true,
              ),
          (r) => FastlaughState(
                profilepic: r,
                isLoading: false,
                isError: false,
              ));
      emit(_state);
    });
    on<Likedlist>((event, emit) async {
      likedvideoidnotifier.value.add(event.id);
    });
    on<Dislikedlist>((event, emit) async {
      likedvideoidnotifier.value.add(event.id);
    });
  }
}
