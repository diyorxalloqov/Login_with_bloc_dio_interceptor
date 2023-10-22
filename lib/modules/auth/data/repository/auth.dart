import 'package:dartz/dartz.dart';
import 'package:login_with_bloc_/modules/auth/data/model/user_model.dart';
import 'package:login_with_bloc_/modules/auth/data/source/service/auth_network_source.dart';
import 'package:login_with_bloc_/modules/auth/domain/repository/repository.dart';
import 'package:login_with_bloc_/utils/failures.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthNetworkSource source = AuthNetworkSource();

  @override
  Future<Either<Failure, bool>> login(
      {required String phone, required String password}) {
    return source.login(phone: phone, password: password);
  }

  @override
  Future<Either<Failure, UserModel>> getUser() {
    return source.getUser();
  }
}
