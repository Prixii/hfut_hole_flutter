import 'package:dio/dio.dart';
import 'package:hfut_hole_flutter/main.dart';
import 'package:hfut_hole_flutter/model/app_profile.dart';
import 'package:hfut_hole_flutter/network/api_client.dart';

final AuthClient authClient = AuthClient();

class AuthClient {
  static String acceptLanguage = "zh-CN";

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
    ).then((response) {
      logger.i(response);
      if (response.data["code"] == 200) {
        AppProfile.autoLogin = autoLogin;
        AppProfile.rememberMe = rememberMe;
        AppProfile.token = "Bearer ${response.data["data"]["token"]}";
        if (rememberMe) {
          AppProfile.studentId = studentId.toString();
          AppProfile.password = password;
        }
      }
      return response;
    });

    return response;
  }
}
