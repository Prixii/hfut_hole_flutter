import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/activable_button.dart';
import 'package:hfut_hole_flutter/components/hello/login_form.dart';
import 'package:hfut_hole_flutter/components/hello/register_form.dart';
import 'package:hfut_hole_flutter/riverpod/hello/hello_provider.dart';

class FormNavigator extends StatelessWidget {
  const FormNavigator({super.key});

  final _loginForm = const LoginForm();
  final _registerForm = const RegisterForm();

  Widget _buildNavigator() {
    return Consumer(
      builder: (builder, ref, child) {
        final page = ref.watch(helloProvider);
        return Row(
          children: [
            Expanded(
              child: ActivableButton(
                text: "登录",
                isActive: page == HelloPage.login,
                inactiveColor: Colors.grey[10],
                onTap: () =>
                    ref.read(helloProvider.notifier).setPage(HelloPage.login),
              ),
            ),
            const SizedBox(width: 10),
            const Divider(
              direction: Axis.vertical,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ActivableButton(
                text: "注册",
                isActive: page == HelloPage.register,
                inactiveColor: Colors.grey[10],
                onTap: () => ref
                    .read(helloProvider.notifier)
                    .setPage(HelloPage.register),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _currentForm() {
    return Consumer(
      builder: (builder, ref, child) {
        final page = ref.watch(helloProvider);
        switch (page) {
          case HelloPage.login:
            return _loginForm;
          case HelloPage.register:
            return _registerForm;
          default:
            return Container();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[10],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 36,
              child: _buildNavigator(),
            ),
            const SizedBox(height: 20),
            Expanded(child: _currentForm()),
          ],
        ),
      ),
    );
  }
}
