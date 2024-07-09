import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/api_end_pints.dart';
import 'package:netflix/domain/home/homerespo/homerespo.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/domain/home/homeservice.dart';

@LazySingleton(as: Homeservice)
class Hometvimpl implements Homeservice {
  @override
  Future<Either<Mainfailures, Homerespo>> hometvdata() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndpoints.hometv);
      log(response.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = Homerespo.fromJson(response.data);
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
