import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';
import 'package:unicons/unicons.dart';
import 'package:window_manager/window_manager.dart';

const titleBarHeight = 32.0;

class TitleBar extends StatefulWidget {
  const TitleBar({super.key});

  @override
  State<TitleBar> createState() => TitleBarState();
}

class TitleBarState extends State<TitleBar> with WindowListener {
  @override
  void initState() {
    super.initState();
    windowManager.addListener(this);
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DragToMoveArea(
      child: Container(
          color: primaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: titleBarHeight,
                child: Row(
                  children: [
                    HoverableButton(
                      iconData: UniconsLine.minus,
                      onPressed: () => windowManager.minimize(),
                    ),
                    HoverableButton(
                      onPressed: () => windowManager.close(),
                      iconData: UniconsLine.multiply,
                      activeColor: Colors.errorPrimaryColor,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class HoverableButton extends StatefulWidget {
  const HoverableButton({
    super.key,
    required this.onPressed,
    required this.iconData,
    this.activeColor = primaryColorDarker,
    this.inactiveColor = primaryColor,
  });
  final Function() onPressed;
  final IconData iconData;
  final Color activeColor;
  final Color inactiveColor;

  @override
  State<HoverableButton> createState() => HoverableButtonState();
}

class HoverableButtonState extends State<HoverableButton> {
  var isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (e) => setState(() => isHovered = true),
      onExit: (e) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          width: 48,
          height: titleBarHeight,
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: isHovered ? widget.activeColor : widget.inactiveColor,
          ),
          child: Icon(
            widget.iconData,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
