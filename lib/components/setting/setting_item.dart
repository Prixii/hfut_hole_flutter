import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/common/hoverable.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {super.key,
      required this.iconData,
      required this.title,
      required this.onTap,
      this.child,
      Color? color})
      : color = color ?? Colors.black;

  final IconData iconData;
  final String title;
  final Function() onTap;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Hoverable(
        borderRadius: 6,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                iconData,
                size: 20,
                color: color,
              ),
              const SizedBox(width: 8),
              Text(
                title,
                textAlign: TextAlign.center,
                style: fontBody.copyWith(
                  color: color,
                ),
              ),
              Expanded(child: Container()),
              child ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
