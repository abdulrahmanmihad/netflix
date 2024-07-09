import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/search/model/searchresp/searchresp.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/search/searchservice.dart';

import '../../domain/core/api_end_pints.dart';

@LazySingleton(as: Searchservice)
class Searchimp implements Searchservice {
  @override
  Future<Either<Mainfailures, Searchresp>> searchMovies(
      {required String moviequary}) async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndpoints.search, queryParameters: {'query': moviequary});
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Searchresp.fromJson(response.data);

        return right(result);
      } else {
        return const Left(Mainfailures.serverfailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(Mainfailures.clientfailures());
    }
  }
}
