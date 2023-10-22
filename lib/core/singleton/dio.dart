import 'package:dio/dio.dart';
import 'package:login_with_bloc_/core/constants/app_urls.dart';
import 'package:login_with_bloc_/core/constants/storage_keys.dart';
import 'package:login_with_bloc_/core/singleton/shared/storage.dart';

class DioSettings {
  final BaseOptions _dioBaseOptions = BaseOptions(
    baseUrl: AppUrls.baseUrl,
    connectTimeout: const Duration(seconds: 35),
    receiveTimeout: const Duration(seconds: 33),
    followRedirects: false,
    validateStatus: (status) => status != null && status <= 500,
  );

  // setUpInterceptor() {
  //   dio.interceptors.add(InterceptorsWrapper(
  //     onResponse: (response, handler) {
  //       print('interceptorOnResponse');
  //     },
  //     onRequest: (request, handler) {
  //       print('interceptorOnRequest');
  //       request.headers.addAll({});
  //     },
  //     onError: (request, errorHandler) {
  //       print('interceptorOnError');
  //       if (request.response?.statusCode == 401 ||
  //           request.response?.statusCode == 403) {
  //         print('refresh Token');
  //         dio.post('url', data: {
  //           "Authorization":
  //               "Bearer ${StorageRepository.getString(StorageKeys.refresh)}"
  //         });
  //       }
  //     },
  //   ));
  // }

  // final _dio = serviceLocator<DioSettings>().dio; ///sample

  BaseOptions get dioBaseOptions => _dioBaseOptions;

  Dio get dio {
    var dio1 = Dio(_dioBaseOptions)
      ..interceptors.add(InterceptorsWrapper(
        onResponse: (response, handler) async {
          print('interceptor OnResponse');
          if (response.statusCode == 401) {
            print('refresh Token');
            var responseRefresh = await dio.post('url', data: {
              "Authorization":
                  "Bearer ${StorageRepository.getString(StorageKeys.refresh)}"
            });

            if (responseRefresh.statusCode! >= 200 &&
                responseRefresh.statusCode! < 300) {
              handler.next(responseRefresh);
            } else {
              handler.next(response);
            }
          } else {
            handler.next(response);
          }
        },
        onRequest: (request, handler) {
          print('interceptor OnRequest');
          request.headers.addAll({});

          handler.next(request);
        },
        onError: (request, errorHandler) async {
          errorHandler.next(request);
          print('interceptorOnError');
        },
      ));
    return dio1;
  }
}
