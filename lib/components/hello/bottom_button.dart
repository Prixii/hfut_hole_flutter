import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

class BottomButton extends StatefulWidget {
  const BottomButton({super.key, required this.onTap, required this.text});

  final Future<void> Function() onTap;
  final String text;

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton>
    with TickerProviderStateMixin {
  double _loadingBarRightEdge = 10;

  late TextEditingController _studentIdController, _passwordController;
  late AnimationController _animationController;
  late Animation<double> _loadingBarPosition;
  late Animation<Color?> _textColorAnimation;

  late AnimationController _infinityController;
  late Animation<double> _opacityAnimation;

  @override
  void dispose() {
    _studentIdController.dispose();
    _passwordController.dispose();
    _animationController.dispose();
    _infinityController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _studentIdController = TextEditingController();
    _passwordController = TextEditingController();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _textColorAnimation = ColorTween(
      begin: Colors.black,
      end: Colors.white,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeIn,
      ),
    );

    _infinityController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _opacityAnimation = Tween(
      begin: 1.0,
      end: 0.0,
    ).animate(
      CurvedAnimation(
        parent: _infinityController,
        curve: Curves.easeInOut,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animationController.forward();
        _infinityController.repeat(reverse: true);
        widget.onTap().then((value) {
          _infinityController.stop();
          _infinityController.reverse();
          _animationController.reverse();
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        height: 40,
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    _loadingBarRightEdge = constraints.maxWidth;
                    _loadingBarPosition =
                        Tween(begin: _loadingBarRightEdge, end: 0.0).animate(
                      CurvedAnimation(
                        parent: _animationController,
                        curve: Curves.easeIn,
                      ),
                    );
                    return AnimatedBuilder(
                      animation: _animationController,
                      builder: (_, __) => Stack(
                        children: [
                          Positioned(
                            left: _loadingBarPosition.value,
                            child: Container(
                              width: constraints.maxWidth,
                              color: primaryColor,
                              height: 40,
                            ),
                          ),
                          Center(
                            child: AnimatedBuilder(
                              animation: _infinityController,
                              builder: (_, __) => Text(
                                widget.text,
                                style: fontBody.copyWith(
                                  color: _textColorAnimation.value!
                                      .withOpacity(_opacityAnimation.value),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                color: primaryColor,
                height: 40,
                width: 40,
                child: const Icon(
                  FluentIcons.double_chevron_right12,
                  color: Colors.white,
                  size: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
