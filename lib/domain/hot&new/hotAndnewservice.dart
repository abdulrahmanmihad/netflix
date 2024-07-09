import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:netflix/domain/hot&new/hot_and_new_resp/model/hot_and_new_resp.dart';

abstract class HotAndNewService {
  Future<Either<Mainfailures, HotAndNewResp>> hotandNewMoviesData();
 
}
