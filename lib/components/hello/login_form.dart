import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/hello/bottom_button.dart';
import 'package:hfut_hole_flutter/main.dart';
import 'package:hfut_hole_flutter/network/auth.dart';
import 'package:hfut_hole_flutter/util/widget_util.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
    with SingleTickerProviderStateMixin {
  bool autoLogin = false;
  bool rememberMe = false;

  late TextEditingController _studentIdController, _passwordController;

  @override
  void dispose() {
    _studentIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _studentIdController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  Widget _buildCheckBoxGroup() {
    return Row(
      children: [
        Expanded(
          child: buildCheckBox(
            rememberMe,
            label: "记住我",
            onChanged: (v) => setState(() => rememberMe = v),
          ),
        ),
        Expanded(
          child: buildCheckBox(
            autoLogin,
            label: "自动登录",
            onChanged: (v) {
              if (v && !rememberMe) {
                rememberMe = true;
              }
              setState(() => autoLogin = v);
            },
          ),
        )
      ],
    );
  }

  Future<void> _doLogin() {
    return Future.delayed(const Duration(seconds: 2));

    // authClient
    //     .loginRequest(
    //   studentId: int.parse(_studentIdController.text),
    //   password: _passwordController.text,
    //   rememberMe: rememberMe,
    //   autoLogin: autoLogin,
    // )
    //     .then(
    //   (value) {
    //     logger.i(value);
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          buildFormItem(
            controller: _studentIdController,
            placeholder: "学号",
          ),
          const SizedBox(height: 10),
          buildFormItem(
            controller: _passwordController,
            placeholder: "密码",
            isPassword: true,
          ),
          const SizedBox(height: 15),
          _buildCheckBoxGroup(),
          Expanded(child: Container()),
          BottomButton(
            onTap: _doLogin,
            text: "登录",
          ),
        ],
      ),
    );
  }
}
