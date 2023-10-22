import 'package:dartz/dartz.dart';
import 'package:login_with_bloc_/modules/auth/data/repository/auth.dart';
import 'package:login_with_bloc_/modules/auth/domain/repository/repository.dart';
import 'package:login_with_bloc_/utils/failures.dart';
import 'package:login_with_bloc_/utils/usecase.dart';

class LoginPhoneUseCase extends UseCase<bool, LoginParams> {
  final AuthRepository repo = AuthRepositoryImpl();

  @override
  Future<Either<Failure, bool>> call(LoginParams params) {
    return repo.login(phone: params.phone, password: params.password);
  }
}

class LoginParams {
  final String phone;

  final String password;

  LoginParams({required this.password, required this.phone});
}
