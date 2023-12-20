import 'package:fluent_ui/fluent_ui.dart';

class HoverableIcon extends StatefulWidget {
  const HoverableIcon({
    super.key,
    required this.iconData,
    Color? iconColor,
    Color? activeColor,
    Color? inactiveColor,
    double? size,
    double? iconSize,
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

  @override
  State<HoverableIcon> createState() => _HoverableIconState();
}

class _HoverableIconState extends State<HoverableIcon> {
  late Color background;

  @override
  void initState() {
    background = widget.inactiveColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() {
        background = widget.activeColor.withOpacity(0.3);
      }),
      onExit: (_) => {
        setState(() {
          background = widget.inactiveColor;
        })
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.size / 2),
          color: background,
        ),
        child: Icon(
          widget.iconData,
          color: widget.iconColor,
          size: widget.iconSize,
        ),
      ),
    );
  }
}
