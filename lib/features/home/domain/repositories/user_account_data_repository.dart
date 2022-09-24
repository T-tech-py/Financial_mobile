import 'package:dartz/dartz.dart';
import 'package:finance_mobile/core/error/failure.dart';
import 'package:finance_mobile/features/home/domain/entities/user_account_entity.dart';

abstract class UserAccountDataRepository {
  Future<Either<Failure, UserAccountDataEntity>> fatchUserAccountData(int id);
}
