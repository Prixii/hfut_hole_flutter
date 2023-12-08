import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/common/activable_button.dart';
import 'package:hfut_hole_flutter/components/hello/login_form.dart';

class FormNavigator extends StatefulWidget {
  const FormNavigator({super.key});

  @override
  State<FormNavigator> createState() => _FormNavigatorState();
}

class _FormNavigatorState extends State<FormNavigator> {
  List<bool> activationList = [true, false];

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
      activationList = [true, false];
    });
  }

  void _toRegister() {
    setState(() {
      activationList = [false, true];
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
            const Expanded(child: LoginForm()),
          ],
        ),
      ),
    );
  }
}
