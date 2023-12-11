import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/user_avatar.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

class HoleDetail extends ConsumerWidget {
  const HoleDetail({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var hole = ref.watch(pageStateProvider).hole;

    Widget buildBackButton() {
      return IconButton(
        icon: const Icon(FluentIcons.back),
        onPressed: () => ref.read(pageStateProvider.notifier).closeHole(),
      );
    }

    Widget buildTitle() {
      if (hole.title != null) {
        return Text(
          hole.title!,
          style: fontTitle,
          textAlign: TextAlign.left,
        );
      } else {
        return Container();
      }
    }

    Widget buildBody() {
      if (hole.body != null) {
        return Text(
          hole.body!,
          style: fontSubTitle,
          textAlign: TextAlign.left,
        );
      } else {
        return Container();
      }
    }

    Widget buildImages() {
      if (hole.imgs.isNotEmpty) {
        return Container();
      } else {
        return Container();
      }
    }

    Widget buildFavoriteIcon() {
      return Row(
        children: [
          const Icon(FluentIcons.heart),
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
          const Icon(FluentIcons.more_vertical)
        ],
      );
    }

    Widget buildUserInfoAndIcon() {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
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
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 32, 32, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildBackButton(),
          buildTitle(),
          buildBody(),
          buildImages(),
          buildUserInfoAndIcon(),
        ],
      ),
    );
  }
}
