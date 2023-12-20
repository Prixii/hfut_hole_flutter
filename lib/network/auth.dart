import 'package:dio/dio.dart';
import 'package:hfut_hole_flutter/env/env.dart';
import 'package:hfut_hole_flutter/model/app_profile.dart';

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
    var response = await httpClient.post(
      "/auth/login",
      data: {
        "studentId": studentId,
        "password": password,
      },
    );
    if (response.statusCode == 200) {
      AppProfile.autoLogin = autoLogin;
      AppProfile.rememberMe = rememberMe;
      AppProfile.token = "Bearer ${response.data["token"]}";
      if (rememberMe) {
        AppProfile.studentId = studentId.toString();
        AppProfile.password = password;
      }
    }
    return response;
  }
}
