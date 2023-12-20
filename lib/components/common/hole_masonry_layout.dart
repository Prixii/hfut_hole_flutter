import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hfut_hole_flutter/components/common/hole_card.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';

class HoleMasonryLayout extends ConsumerWidget {
  const HoleMasonryLayout({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var holeList = ref.watch(pageStateProvider).appState.holeList;
    if (holeList.isEmpty) {
      ref.read(pageStateProvider.notifier).fetchMoreHole();
    }

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: MasonryGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 0.0,
        itemCount: holeList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) => HoleCard(
          hole: holeList[index],
        ),
      ),
    );
  }
}
