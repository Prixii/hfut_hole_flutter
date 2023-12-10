import 'package:dio/dio.dart';
import 'package:hfut_hole_flutter/env/env.dart';

final AuthClient authClient = AuthClient();

class AuthClient {
  late Dio httpClient;
  static String acceptLanguage = "zh-CN";

  AuthClient() {
    httpClient = Dio()
      ..options.baseUrl = '${Env.baseUrl}:${Env.port}'
      ..options.headers['User-Agent'] =
          'Expo/107565 CFNetwork/1485 Darwin/23.1.0'
      ..options.headers['Authorization'] = 'Bearer ';
  }

  Future<Response> loginRequest({
    required int studentId,
    required String password,
    required bool rememberMe,
    required bool autoLogin,
  }) async {
    return await httpClient.post(
      "/auth/login",
      data: {
        "studentId": studentId,
        "password": password,
      },
    );
  }
}
