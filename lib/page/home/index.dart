import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/hole_masonry_layout.dart';
import 'package:hfut_hole_flutter/components/common/hoverable.dart';
import 'package:hfut_hole_flutter/components/common/title_bar.dart';
import 'package:hfut_hole_flutter/gen/assets.gen.dart';
import 'package:hfut_hole_flutter/model/enums.dart';
import 'package:hfut_hole_flutter/page/hole_detail/index.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:hfut_hole_flutter/util/widget_util.dart';
import 'package:unicons/unicons.dart';

import '../../components/home/navigator_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _buildAvatar() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              child: Assets.images.avatar.image(width: 50, height: 50)),
        ),
      ),
    );
  }

  Widget _buildLeftNavigator() {
    const iconSize = 32.0;

    return SizedBox(
      width: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildAvatar(),
              const Divider(),
              NavigatorItem(
                  targetPage: Pages.home,
                  child: Icon(
                    UniconsLine.estate,
                    color: Colors.grey[80],
                    size: iconSize,
                  )),
              NavigatorItem(
                  targetPage: Pages.space,
                  child: Icon(
                    UniconsLine.golf_ball,
                    color: Colors.grey[80],
                    size: iconSize,
                  )),
              NavigatorItem(
                  targetPage: Pages.message,
                  child: Icon(
                    color: Colors.grey[80],
                    UniconsLine.comment_alt_exclamation,
                    size: iconSize,
                  )),
              const Divider(),
              _buildCreateHoleButton(iconSize),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreateHoleButton(double iconSize) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Hoverable(
        borderRadius: 16,
        onTap: () => {},
        child: SizedBox(
          height: 48,
          child: Center(
            child: Icon(
              UniconsLine.plus_circle,
              size: iconSize,
              color: Colors.grey[80],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRightPart() {
    return Column(
      children: [
        _buildSearchBar(),
        Expanded(
          child: HoleMasonryLayout(),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return SizedBox(
      height: 80,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(64, 0, 64, 0),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: const Offset(0, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Expanded(
                  child: buildMetroTextBox(
                      controller: TextEditingController(),
                      placeholder: "搜索",
                      showBorder: false),
                ),
                const SizedBox(width: 16),
                const Icon(UniconsLine.search, size: 22),
                const SizedBox(width: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        switchInCurve: Curves.bounceInOut,
        switchOutCurve: Curves.bounceInOut,
        transitionBuilder: (child, animation) => SlideTransition(
          position: animation.drive(
              Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)),
          child: child,
        ),
        child: ref.watch(pageStateProvider).appState.showHole
            ? const HoleDetailPage()
            : _buildRightPart(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
        padding: EdgeInsets.zero,
        content: Center(
          child: Column(
            children: [
              const TitleBar(),
              Expanded(
                child: Row(
                  children: [
                    _buildLeftNavigator(),
                    const SizedBox(width: 10),
                    Expanded(
                      child: _buildContent(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
