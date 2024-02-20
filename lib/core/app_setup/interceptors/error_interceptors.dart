import 'package:dio/dio.dart';

class ErrorInterceptors extends InterceptorsWrapper {
  ErrorInterceptors();
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      //TODO: logout here
    }
    super.onError(err, handler);
  }
}
