part of 'downloads_bloc.dart';

@freezed
class Downloadsstate with _$Downloadsstate {
  const factory Downloadsstate(
      {required bool isloading,
      required List<Downloads> downloads,
      required Option<Either<Mainfailures, List<Downloads>>>
          optinmainfailureorlistdownloads}) = _Downloadsstate;

  factory Downloadsstate.initial() {
    return Downloadsstate(
        isloading: true,
        optinmainfailureorlistdownloads: none(),
        downloads: []);
  }
}
