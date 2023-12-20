import 'package:fluent_ui/fluent_ui.dart';

class Hoverable extends StatefulWidget {
  const Hoverable({
    super.key,
    required this.child,
    Color? activeColor,
    Color? inactiveColor,
    double? borderRadius,
    required this.onTap,
  })  : activeColor = activeColor ?? Colors.grey,
        inactiveColor = inactiveColor ?? Colors.transparent,
        borderRadius = borderRadius ?? 0;
  final Color activeColor;
  final Color inactiveColor;
  final Widget child;
  final double borderRadius;
  final void Function() onTap;
  @override
  State<Hoverable> createState() => _HoverableState();
}

class _HoverableState extends State<Hoverable> {
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
        background = widget.activeColor.withOpacity(0.1);
      }),
      onExit: (_) => {
        setState(() {
          background = widget.inactiveColor;
        })
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            color: background,
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
