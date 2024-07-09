import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:netflix/domain/core/api_end_pints.dart';
import 'package:netflix/domain/hot&new/hotAndnewservice.dart';
import 'package:netflix/domain/hot&new/hot_and_new_resp/model/hot_and_new_resp.dart';

@LazySingleton(as: HotAndNewService)
class HotAndNewimpl implements HotAndNewService {
  @override
  Future<Either<Mainfailures, HotAndNewResp>> hotandNewMoviesData() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndpoints.hotandnewMovie);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);
        return right(result);
      } else {
        return const Left(Mainfailures.serverfailure());
      }
    } catch (e) {
      return const Left(Mainfailures.clientfailures());
    }
  }

 
  Future<Either<Mainfailures, HotAndNewResp>> hotandNewTvData() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndpoints.hotandnewTV);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HotAndNewResp.fromJson(response.data);
        return right(result);
      } else {
        return const Left(Mainfailures.serverfailure());
      }
    } catch (e) {
      return const Left(Mainfailures.clientfailures());
    }
  }
}
