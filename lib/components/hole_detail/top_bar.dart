import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:unicons/unicons.dart';

class TopBar extends ConsumerStatefulWidget {
  const TopBar({
    super.key,
  });

  @override
  ConsumerState<TopBar> createState() => _TopBarState();
}

class _TopBarState extends ConsumerState<TopBar> {
  final Color inactiveColor = Colors.transparent;
  final Color activeColor = Colors.grey[20];
  var isHovered = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: MouseRegion(
        onEnter: (event) => setState(() {
          isHovered = true;
        }),
        onExit: (event) => setState(() {
          isHovered = false;
        }),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: isHovered ? activeColor : inactiveColor,
            ),
            width: 64,
            child: Row(
              children: [
                Icon(
                  UniconsLine.arrow_left,
                  color: Colors.grey[100],
                  size: 36,
                ),
              ],
            ),
          ),
          onTap: () => ref.read(pageStateProvider.notifier).closeHole(),
        ),
      ),
    );
  }
}
