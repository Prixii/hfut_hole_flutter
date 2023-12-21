import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/hoverable.dart';
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
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: Hoverable(
        borderRadius: 8,
        onTap: () => ref.read(pageStateProvider.notifier).closeHole(),
        child: SizedBox(
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
      ),
    );
  }
}
