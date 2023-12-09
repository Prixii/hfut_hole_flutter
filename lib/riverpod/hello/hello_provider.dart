import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hello_provider.g.dart';

@riverpod
class Hello extends _$Hello {
  @override
  HelloPage build() {
    return HelloPage.login;
  }

  void setPage(HelloPage page) {
    state = page;
  }
}

Future<void> login({
  required String studentId,
  required String password,
  required bool rememberMe,
  required bool autoLogin,
}) async {
  await Future.delayed(const Duration(seconds: 2));
}

Future<void> register({
  required String nickName,
  required String studentId,
  required String password,
  required String infoPortalPassword,
}) async {
  await Future.delayed(const Duration(seconds: 2));
}

enum HelloPage {
  login,
  register,
}
