import 'package:get_it/get_it.dart';
import 'package:login_with_bloc_/core/singleton/dio.dart';
import 'package:login_with_bloc_/core/singleton/shared/storage.dart';

final serviceLocator = GetIt.I;

Future<void> setupLocator() async {
  await StorageRepository.getInstance();
  serviceLocator.registerLazySingleton(DioSettings.new);
}
