import 'package:dio/dio.dart';
import 'package:hfut_hole_flutter/env/env.dart';
import 'package:hfut_hole_flutter/model/app_profile.dart';

final httpClient = Dio()
  ..options.baseUrl = '${Env.baseUrl}:${Env.port}'
  ..options.headers['User-Agent'] = 'Expo/107565 CFNetwork/1485 Darwin/23.1.0'
  ..options.headers['Authorization'] = AppProfile.token;

final ApiClient apiClient = ApiClient();

class ApiClient {
  static String acceptLanguage = "zh-CN";
}
