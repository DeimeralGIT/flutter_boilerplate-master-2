import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

import '../../utils/storage_utils.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await StorageUtils.getAccessToken();

    if (options.data is FormData) {
      options.headers[HttpHeaders.contentTypeHeader] = 'multipart/form-data';
    }

    if (token?.isNotEmpty == true) {
      options.headers.putIfAbsent(HttpHeaders.authorizationHeader, () => 'bearer $token');
    }

    return handler.next(options);
  }
}
