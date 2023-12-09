import 'package:fluent_ui/fluent_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hfut_hole_flutter/components/hello/login_form.dart';
import 'package:hfut_hole_flutter/components/hello/register_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'hello_provider.freezed.dart';
// final helloProvider = Provider<Page>((ref) {
//   return Page.login;
// });
part 'hello_provider.g.dart';

@riverpod
class Hello extends _$Hello {
  final _loginForm = const LoginForm();
  late final RegisterForm _registerForm = const RegisterForm();
  @override
  HelloState build() {
    return HelloState(
      page: HelloPage.login,
      currentPage: _loginForm,
    );
  }

  void setPage(HelloPage page) {
    switch (page) {
      case HelloPage.login:
        state = state.copyWith(currentPage: _loginForm, page: page);
        break;
      case HelloPage.register:
        state = state.copyWith(currentPage: _registerForm, page: page);
        break;
    }
  }
}

@freezed
class HelloState with _$HelloState {
  const factory HelloState({
    required HelloPage page,
    required Widget currentPage,
  }) = _HelloState;
}

enum HelloPage {
  login,
  register,
}
