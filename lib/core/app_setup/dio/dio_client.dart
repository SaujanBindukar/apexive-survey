import 'package:apexive_test/core/app_setup/interceptors/error_interceptors.dart';
import 'package:apexive_test/core/app_setup/interceptors/request_interceptors.dart';
import 'package:apexive_test/core/app_setup/interceptors/response_interceptors.dart';
import 'package:dio/dio.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/';

class DioClient {
  static Dio getDio() {
    final dio = Dio();

    dio.options.baseUrl = baseUrl;
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.options.contentType = Headers.jsonContentType;

    dio.options.headers = <String, dynamic>{
      'Accept': Headers.jsonContentType,
    };
    dio.interceptors.addAll([
      LogInterceptor(),
      RequestInterceptors(),
      ResponseInterceptors(),
      ErrorInterceptors()
    ]);
    return dio;
  }
}
