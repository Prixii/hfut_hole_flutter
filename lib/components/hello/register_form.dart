import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/hello/bottom_button.dart';
import 'package:hfut_hole_flutter/riverpod/hello/hello_provider.dart';
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

  Future<void> _doRegister() {
    return register(
      nickName: _nickNameController.text,
      studentId: _studentIdController.text,
      password: _passwordController.text,
      infoPortalPassword: _infoPortalPasswordController.text,
    ).then((value) => null);
  }

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
          BottomButton(
            onTap: _doRegister,
            text: "注册",
          ),
        ],
      ),
    );
  }
}
