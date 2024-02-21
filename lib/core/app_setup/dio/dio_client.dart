import 'package:apexive_test/core/app_setup/interceptors/error_interceptors.dart';
import 'package:apexive_test/core/app_setup/interceptors/request_interceptors.dart';
import 'package:apexive_test/core/app_setup/interceptors/response_interceptors.dart';
import 'package:dio/dio.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/';

class DioClient {
  late Dio _dio;

  DioClient() {
    _dio = Dio();

    _dio.options.baseUrl = baseUrl;
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
    _dio.options.contentType = Headers.jsonContentType;

    _dio.options.headers = <String, dynamic>{
      'Accept': Headers.jsonContentType,
    };
    _dio.interceptors.addAll([
      LogInterceptor(),
      RequestInterceptors(),
      ResponseInterceptors(),
      ErrorInterceptors()
    ]);
  }

  Dio get dio => _dio;
}
