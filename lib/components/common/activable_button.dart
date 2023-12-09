import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

class ActivableButton extends StatefulWidget {
  const ActivableButton({
    super.key,
    required this.text,
    required this.isActive,
    required this.onTap,
    this.activeColor = primaryColor,
    this.inactiveColor = Colors.white,
  });

  final String text;
  final bool isActive;
  final Function() onTap;
  final Color? activeColor;
  final Color? inactiveColor;

  @override
  State<ActivableButton> createState() => _ActivableButtonState();
}

class _ActivableButtonState extends State<ActivableButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: widget.isActive ? widget.activeColor : widget.inactiveColor,
        ),
        child: TweenAnimationBuilder(
          duration: const Duration(milliseconds: 100),
          tween: ColorTween(
            begin: widget.isActive ? Colors.black : widget.inactiveColor,
            end: widget.isActive ? widget.inactiveColor : Colors.black,
          ),
          builder: (_, textColor, __) {
            return Center(
              child: Text(
                widget.text,
                style: fontBody.copyWith(
                  color: textColor,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
