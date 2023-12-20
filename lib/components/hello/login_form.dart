import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:hfut_hole_flutter/components/hello/bottom_button.dart';
import 'package:hfut_hole_flutter/main.dart';
import 'package:hfut_hole_flutter/model/app_profile.dart';
import 'package:hfut_hole_flutter/util/widget_util.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>
    with SingleTickerProviderStateMixin {
  late bool _autoLogin;
  late bool _rememberMe;

  late TextEditingController _studentIdController, _passwordController;

  @override
  void initState() {
    _studentIdController = TextEditingController();
    _passwordController = TextEditingController();

    _studentIdController.text = AppProfile.studentId;
    _autoLogin = AppProfile.autoLogin;
    _rememberMe = AppProfile.rememberMe;

    logger.d('[id]: ${AppProfile.studentId}');

    super.initState();
  }

  @override
  void dispose() {
    _studentIdController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Widget _buildCheckBoxGroup() {
    return Row(
      children: [
        Expanded(
          child: buildCheckBox(
            _rememberMe,
            label: "记住我",
            onChanged: (v) => setState(() {
              _rememberMe = v;
            }),
          ),
        ),
        Expanded(
          child: buildCheckBox(
            _autoLogin,
            label: "自动登录",
            onChanged: (v) {
              if (v && !_rememberMe) {
                _rememberMe = true;
              }
              setState(() => _autoLogin = v);
            },
          ),
        )
      ],
    );
  }

  Future<void> _doLogin() {
    return Future.delayed(const Duration(seconds: 2)).then((value) {
      context.go('/home');
    });

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
