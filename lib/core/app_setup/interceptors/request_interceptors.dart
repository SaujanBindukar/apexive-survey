import 'package:dio/dio.dart';

class RequestInterceptors extends InterceptorsWrapper {
  RequestInterceptors();
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    //TODo: get token and add to header if needed
    super.onRequest(options, handler);
  }
}
