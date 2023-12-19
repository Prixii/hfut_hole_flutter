import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/user_avatar.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';
import 'package:unicons/unicons.dart';

class HoleDetail extends ConsumerWidget {
  const HoleDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var hole = ref.watch(pageStateProvider).holeState.hole;

    Widget buildTitle() {
      if (hole.title != null) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
          child: Text(
            hole.title!,
            style: fontTitle,
            textAlign: TextAlign.left,
          ),
        );
      } else {
        return const SizedBox(
          height: 16,
        );
      }
    }

    Widget buildBody() {
      if (hole.body != null) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            hole.body!,
            style: fontBody,
            textAlign: TextAlign.left,
          ),
        );
      } else {
        return const SizedBox(
          height: 16,
        );
      }
    }

    Widget buildImages() {
      if (hole.imgs.isEmpty) {
        return Container();
      } else {
        return GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: hole.imgs.length,
          itemBuilder: (context, index) =>
              CachedNetworkImage(imageUrl: hole.imgs[index]),
        );
      }
    }

    Widget buildFavoriteIcon() {
      return Row(
        children: [
          const Icon(UniconsLine.heart),
          const SizedBox(width: 5),
          Text(hole.favoriteCounts > 99
              ? "99+"
              : hole.favoriteCounts.toString()),
        ],
      );
    }

    Widget buildIconGroup() {
      return Row(
        children: [
          buildFavoriteIcon(),
          const SizedBox(width: 5),
          const Icon(UniconsSolid.ellipsis_v)
        ],
      );
    }

    Widget buildUserInfoAndIcon() {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: SizedBox(
          height: 60,
          child: Row(
            children: [
              UserAvatar(url: hole.user.avatar),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  hole.user.username,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ),
              buildIconGroup(),
            ],
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TopBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTitle(),
                  buildBody(),
                  buildImages(),
                ],
              ),
            ),
          ),
          const Divider(),
          buildUserInfoAndIcon(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

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
