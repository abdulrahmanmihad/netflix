import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

import '../../domain/core/Failures/main_failures.dart';
part 'downloads_bloc.freezed.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, Downloadsstate> {
  final Idownloadsrepo _downloadsrepo;
  DownloadsBloc(this._downloadsrepo) : super(Downloadsstate.initial()) {
    on<_getdownloadsimages>((event, emit) async {
      emit(state.copyWith(
          isloading: false, optinmainfailureorlistdownloads: none()));

      final Either<Mainfailures, List<Downloads>> downloadsoption =
          await _downloadsrepo.getdownloadsimages();
      log(downloadsoption.toString());

      emit(downloadsoption.fold(
          (failure) => state.copyWith(
              isloading: false,
              optinmainfailureorlistdownloads: some(left(failure))),
          (succes) => state.copyWith(
              isloading: false,
              optinmainfailureorlistdownloads: some(right(succes)),
              downloads: succes)));
    });
  }
}
