import 'package:dartz/dartz.dart';
import 'package:finance_mobile/core/error/failure.dart';
import 'package:finance_mobile/features/home/domain/entities/user_data_entity.dart';

abstract class UserData {
  Future<Either<Failure, UserDataEntity>> fatchUserData();
}
