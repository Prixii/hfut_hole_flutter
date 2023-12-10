import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hfut_hole_flutter/components/common/post_card.dart';
import 'package:hfut_hole_flutter/gen/assets.gen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget _buildAvatar() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
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

  Widget _buildNavigator() {
    return Container(
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildAvatar(),
          const Divider(),
          _buildNavigatorItem(const Icon(
            FluentIcons.home,
            size: 28,
          )),
          _buildNavigatorItem(const Icon(
            FluentIcons.info,
            size: 28,
          )),
          _buildNavigatorItem(const Icon(
            FluentIcons.spacer,
            size: 28,
          )),
          Expanded(child: Container()),
        ],
      ),
    );
  }

  Widget _buildNavigatorItem(Widget child) {
    return SizedBox(
      height: 52,
      child:
          Padding(padding: const EdgeInsets.fromLTRB(4, 0, 4, 4), child: child),
    );
  }

  Widget _buildMasonryGridView() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: MasonryGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 28.0,
        crossAxisSpacing: 24.0,
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) => PostCard(
          height: 100.0 + 10 * index,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: Center(
        child: Row(
          children: [
            _buildNavigator(),
            Expanded(
              child: _buildMasonryGridView(),
            ),
          ],
        ),
      ),
    );
  }
}
