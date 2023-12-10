import 'package:hfut_hole_flutter/env/env.dart';
import 'package:hfut_hole_flutter/network/auth.dart';

Future<void> _doLogin() {
  return authClient
      .loginRequest(
    studentId: Env.studentId,
    password: Env.password,
    rememberMe: true,
    autoLogin: true,
  )
      .then(
    (value) {
      print(value);
    },
  );
}

void main() {
  _doLogin();
}
