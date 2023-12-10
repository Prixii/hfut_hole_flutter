import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/model/hole/hole.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

class HoleCard extends StatelessWidget {
  const HoleCard({super.key, required this.hole});

  final Hole hole;

  Widget _buildInfoWithTitle() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: _calcBorderRadius(),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                hole.title!,
                style: fontSubTitleBold,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Expanded(child: Container()),
              _buildUserInfoAndIcon(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoWithBody() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: _calcBorderRadius(),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 8,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      height: 160,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                hole.body ?? "",
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
              Expanded(child: Container()),
              _buildUserInfoAndIcon(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfoAndIcon() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          ClipOval(
              child: Image.network(hole.user.avatar, width: 30, height: 30)),
          Expanded(
            child: Text(
              hole.user.username,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
            ),
          ),
          _buildIconGroup(),
        ],
      ),
    );
  }

  Widget _buildIconGroup() {
    return Row(
      children: [
        _buildCommentIcon(),
        const SizedBox(width: 12),
        _buildFavoriteIcon(),
        const SizedBox(width: 5),
        const Icon(FluentIcons.more_vertical)
      ],
    );
  }

  Widget _buildCommentIcon() {
    return Row(
      children: [
        const Icon(FluentIcons.comment),
        const SizedBox(width: 5),
        Text(hole.commentCounts > 99 ? "99+" : hole.commentCounts.toString()),
      ],
    );
  }

  Widget _buildFavoriteIcon() {
    return Row(
      children: [
        const Icon(FluentIcons.heart),
        const SizedBox(width: 5),
        Text(hole.favoriteCounts > 99 ? "99+" : hole.favoriteCounts.toString()),
      ],
    );
  }

  BorderRadius _calcBorderRadius() {
    if (hole.imgs.isEmpty) {
      return const BorderRadius.all(Radius.circular(8));
    } else {
      return const BorderRadius.only(
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[40],
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: hole.imgs.isEmpty
                ? Container()
                : ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    child: Image.network(
                      hole.imgs[0],
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
          ),
          hole.title != null ? _buildInfoWithTitle() : _buildInfoWithBody(),
        ],
      ),
    );
  }
}
