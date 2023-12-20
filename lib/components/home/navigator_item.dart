import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/hoverable.dart';
import 'package:hfut_hole_flutter/model/enums.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

class NavigatorItem extends ConsumerWidget {
  const NavigatorItem({
    super.key,
    required this.child,
    required this.targetPage,
  });

  final Widget child;
  final Pages targetPage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isActive = ref.watch(pageStateProvider).appState.page == targetPage;

    return SizedBox(
      height: 56,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
        child: Hoverable(
          borderRadius: 16,
          child: GestureDetector(
            onTap: () =>
                ref.read(pageStateProvider.notifier).setPage(targetPage),
            child: Column(
              children: [
                Container(
                  height: 6,
                ),
                Expanded(
                  child: TweenAnimationBuilder(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceInOut,
                    tween: Tween<double>(
                        begin: isActive ? 0 : 1, end: isActive ? 1 : 0),
                    builder: (_, value, __) => ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return RadialGradient(
                            center: Alignment.center,
                            radius: 1,
                            colors: const [primaryColor, Colors.transparent],
                            stops: [value, value],
                          ).createShader(bounds);
                        },
                        blendMode: BlendMode.srcATop,
                        child: child),
                  ),
                ),
                Container(
                  height: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: isActive ? primaryColor : Colors.transparent,
                  ),
                  width: 36,
                ),
                Container(
                  height: 6,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
