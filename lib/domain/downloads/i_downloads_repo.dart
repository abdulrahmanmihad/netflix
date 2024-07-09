import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

abstract class Idownloadsrepo {
  Future<Either<Mainfailures, List<Downloads>>> getdownloadsimages();
}
