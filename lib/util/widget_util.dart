import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

Widget buildMetroTextBox({
  required TextEditingController controller,
  String? placeholder,
  bool isPassword = false,
  int maxLines = 1,
  bool showBorder = true,
  FocusNode? focusNode,
  Function(String)? onChanged,
}) =>
    isPassword
        ? PasswordBox(
            focusNode: focusNode,
            style: fontBody,
            placeholder: placeholder,
            controller: controller,
            highlightColor: Colors.transparent,
            unfocusedColor: Colors.transparent,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: showBorder ? Colors.grey[20] : Colors.transparent,
                width: showBorder ? 1 : 0,
              ),
            ),
          )
        : TextBox(
            focusNode: focusNode,
            style: fontBody,
            textAlign: TextAlign.left,
            placeholder: placeholder,
            controller: controller,
            highlightColor: Colors.transparent,
            unfocusedColor: Colors.transparent,
            maxLines: maxLines,
            minLines: 1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              border: Border.all(
                color: showBorder ? Colors.grey[20] : Colors.transparent,
                width: showBorder ? 1 : 0,
              ),
            ),
            onChanged: onChanged,
          );

Widget buildFormItem({
  required TextEditingController controller,
  String? placeholder,
  double? height,
  bool isPassword = false,
}) =>
    SizedBox(
      height: height ?? 50,
      child: buildMetroTextBox(
        controller: controller,
        placeholder: placeholder,
        isPassword: isPassword,
      ),
    );

Widget buildCheckBox(bool checked,
        {required String label, required Function(bool) onChanged}) =>
    GestureDetector(
      onTap: () => onChanged(!checked),
      child: Row(
        children: [
          Checkbox(
            checked: checked,
            onChanged: (v) => onChanged(v ?? false),
            style: const CheckboxThemeData(),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(label),
        ],
      ),
    );
