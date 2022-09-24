import 'package:dartz/dartz.dart';
import 'package:finance_mobile/core/error/failure.dart';
import 'package:finance_mobile/features/home/domain/entities/user_account_entity.dart';

import '../repositories/user_account_data_repository.dart';

class GetUserAccountDataUsecase {
  final UserAccountDataRepository repository;
  GetUserAccountDataUsecase({required this.repository});

  Future<Either<Failure, UserAccountDataEntity>> execute(
      {required int id}) async {
    return await repository.fatchUserAccountData(id);
  }
}
