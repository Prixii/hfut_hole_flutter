import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hfut_hole_flutter/components/common/hole_card.dart';
import 'package:hfut_hole_flutter/components/common/hoverable.dart';
import 'package:hfut_hole_flutter/model/hole/hole.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

class HoleMasonryLayout extends ConsumerStatefulWidget {
  const HoleMasonryLayout({super.key});

  @override
  ConsumerState<HoleMasonryLayout> createState() => _HoleMasonryLayoutState();
}

class _HoleMasonryLayoutState extends ConsumerState<HoleMasonryLayout> {
  late ScrollController _scrollController;
  late List<Hole> holeList;

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent &&
          !_isFetchingHole()) {
        ref.read(pageStateProvider.notifier).fetchMoreHole(null, null);
      }
    });
    super.initState();
  }

  Widget _loadingSign() {
    return _isFetchingHole()
        ? Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Container(
              height: 42,
              width: 128,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(28),
              ),
              child: Center(
                  child: Row(
                children: [
                  const ProgressRing(),
                  const SizedBox(width: 8),
                  Text("很快啊很快",
                      style: fontBody.copyWith(color: Colors.grey[100]))
                ],
              )),
            ),
          )
        : const SizedBox(
            height: 50,
          );
  }

  bool _isFetchingHole() {
    return ref.watch(pageStateProvider).isFetchingHole;
  }

  Future<void> initData() async {
    if (holeList.isEmpty) {
      ref.read(pageStateProvider.notifier).fetchMoreHole(null, 20);
    }
  }

  @override
  Widget build(BuildContext context) {
    holeList = ref.watch(pageStateProvider).holeList;
    initData();
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
          _loadingSign(),
        ],
      ),
    );
  }
}
