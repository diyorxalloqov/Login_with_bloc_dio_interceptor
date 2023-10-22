import 'package:dartz/dartz.dart';
import 'package:login_with_bloc_/modules/auth/data/model/user_model.dart';
import 'package:login_with_bloc_/utils/failures.dart';

abstract class AuthRepository {
  Future<Either<Failure, bool>> login(
      {required String phone, required String password});
  Future<Either<Failure, UserModel>> getUser();
}
