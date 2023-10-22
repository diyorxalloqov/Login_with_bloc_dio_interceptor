import 'package:dartz/dartz.dart';
import 'package:login_with_bloc_/modules/auth/data/model/user_model.dart';
import 'package:login_with_bloc_/modules/auth/data/repository/auth.dart';
import 'package:login_with_bloc_/modules/auth/domain/repository/repository.dart';
import 'package:login_with_bloc_/utils/failures.dart';
import 'package:login_with_bloc_/utils/usecase.dart';

class GetUserUseCase extends UseCase<UserModel, String?> {
  final AuthRepository repo = AuthRepositoryImpl();

  @override
  Future<Either<Failure, UserModel>> call(String? params) {
    return repo.getUser();
  }
}
