import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:netflix/domain/search/model/searchresp/searchresp.dart';

abstract class Searchservice {
  Future<Either<Mainfailures, Searchresp>> searchMovies(
      {required String moviequary});
}
