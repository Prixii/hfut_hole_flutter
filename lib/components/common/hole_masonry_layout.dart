import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hfut_hole_flutter/components/common/hole_card.dart';
import 'package:hfut_hole_flutter/components/common/hoverable.dart';
import 'package:hfut_hole_flutter/main.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

class HoleMasonryLayout extends ConsumerStatefulWidget {
  const HoleMasonryLayout({super.key});

  @override
  ConsumerState<HoleMasonryLayout> createState() => _HoleMasonryLayoutState();
}

class _HoleMasonryLayoutState extends ConsumerState<HoleMasonryLayout>
    with AutomaticKeepAliveClientMixin<HoleMasonryLayout> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        logger.d('[fetch more]');
        ref.read(pageStateProvider.notifier).fetchMoreHole(null, null);
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var holeList = ref.watch(pageStateProvider).appState.holeList;
    if (holeList.isEmpty) {
      ref.read(pageStateProvider.notifier).fetchMoreHole(null, 20);
    }

    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          Padding(
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
          ),
          _buildLoadMoreButton(),
        ],
      ),
    );
  }

  Padding _buildLoadMoreButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Hoverable(
        inactiveColor: Colors.grey[50],
        activeColor: Colors.grey,
        borderRadius: 21,
        onTap: () =>
            {ref.read(pageStateProvider.notifier).fetchMoreHole(null, null)},
        child: Container(
          height: 42,
          width: 128,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
          ),
          child: Center(
            child: Text(
              '加载更多',
              style: fontSubTitle.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
