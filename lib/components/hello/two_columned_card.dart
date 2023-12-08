import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/gen/assets.gen.dart';

class TwoColumnedCard extends StatelessWidget {
  const TwoColumnedCard({super.key, required this.formWidget});

  final Widget formWidget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      height: 400,
      child: Row(
        children: [
          Container(
            width: 300,
            height: 400,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Assets.images.poster.image(),
          ),
          Container(
            width: 300,
            height: 420,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: formWidget,
          ),
        ],
      ),
    );
  }
}
