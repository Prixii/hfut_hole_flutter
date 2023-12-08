import 'package:dio/dio.dart';
import 'package:hfut_hole_flutter/env/env.dart';

final ApiClient apiClient = ApiClient();

class ApiClient {
  late Dio httpClient;
  static String acceptLanguage = "zh-CN";

  ApiClient() {
    httpClient = Dio()..options.baseUrl = Env.baseUrl;
  }
}
