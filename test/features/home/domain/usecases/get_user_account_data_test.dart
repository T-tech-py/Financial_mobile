import 'package:dartz/dartz.dart';
import 'package:finance_mobile/core/error/failure.dart';
import 'package:finance_mobile/features/home/domain/entities/user_account_entity.dart';
import 'package:finance_mobile/features/home/domain/repositories/user_account_data_repository.dart';
import 'package:finance_mobile/features/home/domain/usecases/get_user_account_data.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockUserAccountDataRepository extends Mock
    implements UserAccountDataRepository {
  @override
  Future<Either<Failure, UserAccountDataEntity>> fatchUserAccountData(
      int id) async {
    return Right<Failure, UserAccountDataEntity>(
        UserAccountDataEntity(id: 1, accountBalance: "100.00", card: []));
  }
}

void main() {
  MockUserAccountDataRepository mock = MockUserAccountDataRepository();
  GetUserAccountDataUsecase usecase =
      GetUserAccountDataUsecase(repository: mock);
  setUp(() {
    mock = MockUserAccountDataRepository();
    usecase = GetUserAccountDataUsecase(repository: mock);
  });

  const tId = 1;
  final tUserAccountData =
      UserAccountDataEntity(id: tId, accountBalance: "100.00", card: []);
  test("should get the userAccountDataEntity from the repository", () async {
    // arrange
    when(mock.fatchUserAccountData(tId)).thenAnswer(
        (_) async => Right<Failure, UserAccountDataEntity>(tUserAccountData));
    // act
    final result = await usecase.execute(id: tId);
    //assert
    expect(result,
        equals(Right<Failure, UserAccountDataEntity>(tUserAccountData)));
    verify(mock.fatchUserAccountData(tId));
    verifyNoMoreInteractions(mock);
  });
}
