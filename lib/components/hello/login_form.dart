import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';
import 'package:hfut_hole_flutter/util/widget_util.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late TextEditingController _studentIdController, _passwordController;
  bool rememberMe = false;
  bool autoLogin = false;

  @override
  void initState() {
    _studentIdController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  Widget _buildBottomButton(String text, Function() onTap) => GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          height: 40,
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    style: fontBody.copyWith(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  color: primaryColor,
                  height: 40,
                  width: 40,
                  child: const Icon(
                    FluentIcons.double_chevron_right12,
                    color: Colors.white,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
        ),
      );

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
          _buildBottomButton(
            "登录",
            () => {},
          ),
        ],
      ),
    );
  }
}
