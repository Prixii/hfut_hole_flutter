import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/common/activable_button.dart';
import 'package:hfut_hole_flutter/components/hello/login_form.dart';
import 'package:hfut_hole_flutter/components/hello/register_form.dart';

class FormNavigator extends StatefulWidget {
  const FormNavigator({super.key});

  @override
  State<FormNavigator> createState() => _FormNavigatorState();
}

class _FormNavigatorState extends State<FormNavigator> {
  List<bool> activationList = [true, false];
  final loginForm = const LoginForm();
  late Widget registerForm = const RegisterForm();
  late Widget currentForm;

  @override
  void initState() {
    currentForm = loginForm;
    super.initState();
  }

  Widget _buildNavigator() {
    return Row(
      children: [
        Expanded(
          child: ActivableButton(
            text: "登录",
            isActive: activationList[0],
            inactiveColor: Colors.grey[10],
            onTap: _toLogin,
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
            isActive: activationList[1],
            inactiveColor: Colors.grey[10],
            onTap: _toRegister,
          ),
        ),
      ],
    );
  }

  void _toLogin() {
    setState(() {
      if (activationList[0]) return;
      activationList = [true, false];
      currentForm = loginForm;
    });
  }

  void _toRegister() {
    if (activationList[1]) return;
    setState(() {
      activationList = [false, true];
      currentForm = registerForm;
    });
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
            Expanded(child: currentForm),
          ],
        ),
      ),
    );
  }
}
