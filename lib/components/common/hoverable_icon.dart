import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/common/hoverable.dart';

class HoverableIcon extends StatelessWidget {
  const HoverableIcon({
    super.key,
    required this.iconData,
    Color? iconColor,
    Color? activeColor,
    Color? inactiveColor,
    double? size,
    double? iconSize,
    required this.onTap,
  })  : iconColor = iconColor ?? Colors.black,
        activeColor = activeColor ?? Colors.grey,
        inactiveColor = inactiveColor ?? Colors.transparent,
        size = size ?? 30,
        iconSize = iconSize ?? 20;

  final IconData iconData;
  final Color iconColor;
  final Color activeColor;
  final Color inactiveColor;
  final double size;
  final double iconSize;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Hoverable(
      activeColor: activeColor,
      inactiveColor: inactiveColor,
      borderRadius: 15,
      child: Icon(
        iconData,
        color: iconColor,
        size: iconSize,
      ),
      onTap: onTap,
    );
  }
}
