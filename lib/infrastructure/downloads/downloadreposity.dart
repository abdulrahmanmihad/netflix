import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:netflix/domain/core/api_end_pints.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/downloads/i_downloads_repo.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';

@LazySingleton(as: Idownloadsrepo)
class Downloadrepository implements Idownloadsrepo {
  @override
  Future<Either<Mainfailures, List<Downloads>>> getdownloadsimages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadlist = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        print(downloadlist);

        return right(downloadlist);
      } else {
        return const Left(Mainfailures.serverfailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(Mainfailures.clientfailures());
    }
  }
}
