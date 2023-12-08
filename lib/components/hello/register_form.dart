import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';
import 'package:hfut_hole_flutter/util/widget_util.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late TextEditingController _nickNameController,
      _studentIdController,
      _passwordController,
      _infoPortalPasswordController;
  bool rememberMe = false;
  bool autoLogin = false;

  @override
  void initState() {
    _nickNameController = TextEditingController();
    _studentIdController = TextEditingController();
    _passwordController = TextEditingController();
    _infoPortalPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _studentIdController.dispose();
    _passwordController.dispose();
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          buildFormItem(
            controller: _nickNameController,
            placeholder: "姓名",
          ),
          const SizedBox(height: 10),
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
          const SizedBox(height: 10),
          buildFormItem(
            controller: _infoPortalPasswordController,
            placeholder: "信息门户密码",
            isPassword: true,
          ),
          const SizedBox(height: 15),
          Expanded(child: Container()),
          _buildBottomButton(
            "注册",
            () => {},
          ),
        ],
      ),
    );
  }
}
