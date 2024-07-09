import 'package:dartz/dartz.dart';
import 'package:netflix/domain/core/Failures/main_failures.dart';
import 'package:netflix/domain/home/homerespo/homerespo.dart';

abstract class Homeservice {
  Future<Either<Mainfailures, Homerespo>> hometvdata();
}
