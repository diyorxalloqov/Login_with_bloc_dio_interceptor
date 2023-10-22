import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:login_with_bloc_/core/constants/app_urls.dart';
import 'package:login_with_bloc_/core/constants/storage_keys.dart';
import 'package:login_with_bloc_/core/singleton/dio.dart';
import 'package:login_with_bloc_/core/singleton/service_locator.dart';
import 'package:login_with_bloc_/core/singleton/shared/storage.dart';
import 'package:login_with_bloc_/modules/auth/data/model/user_model.dart';
import 'package:login_with_bloc_/utils/failures.dart';
import 'package:login_with_bloc_/utils/function.dart';

class AuthNetworkSource {
  final client = serviceLocator<DioSettings>().dio;

  Future<Either<Failure, bool>> login(
      {required String phone, required String password}) async {
    Map<String, dynamic> data = {
      "device_id": await getId(),
      "phone": '+998$phone',
      "password": password
    };

    try {
      final result = await client.post(AppUrls.login, data: data);
      print(result.realUri);
      print(result.data.toString());
      print(result.statusCode.toString());
      print(data.toString());
      if (result.statusCode! >= 200 && result.statusCode! < 300) {
        StorageRepository.putString(StorageKeys.token, result.data['access']);
        StorageRepository.putString(
            StorageKeys.refresh, result.data['refresh']);

        return Right(true);
      } else {
        return Left(ServerFailure(message: ''));
      }
    } catch (e) {
      return Left(ServerFailure(message: 'Server error'));
    }
  }

  Future<Either<Failure, UserModel>> getUser() async {
    print(StorageRepository.getString(StorageKeys.token, defValue: ''));
    try {
      final result = await client.get(AppUrls.getUser,
          options: Options(headers: {
            "Authorization":
                "Bearer ${StorageRepository.getString(StorageKeys.token, defValue: '')}"
          }));
      print(result.realUri);
      print(result.data.toString());
      print(result.statusCode.toString());

      if (result.statusCode! >= 200 && result.statusCode! < 300) {
        return Right(UserModel.fromJson(result.data));
      } else {
        return Left(ServerFailure(message: ''));
      }
    } catch (e) {
      return Left(ServerFailure(message: 'Server error'));
    }
  }
}
