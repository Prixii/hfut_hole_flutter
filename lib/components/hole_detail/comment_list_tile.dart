import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/common/user_avatar.dart';
import 'package:hfut_hole_flutter/model/hole/hole.dart';
import 'package:unicons/unicons.dart';

class CommentListTile extends StatefulWidget {
  const CommentListTile({
    super.key,
    required this.comment,
  });
  final Comment comment;
  @override
  State<CommentListTile> createState() => _CommentListTileState();
}

class _CommentListTileState extends State<CommentListTile> {
  Widget _buildCommentBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildUserName(),
        _buildContent(),
        _buildFooter(),
      ],
    );
  }

  Widget _buildUserName() {
    return Text(
      widget.comment.user.username,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
    );
  }

  Widget _buildContent() {
    return Text(
      widget.comment.body,
      textAlign: TextAlign.start,
    );
  }

  Widget _buildFooter() {
    return Row(
      children: [
        _buildTime(),
        const SizedBox(width: 12),
        _buildReplyButton(),
        const SizedBox(width: 12),
        _buildFavoriteIcon(),
        const SizedBox(width: 12),
        const Icon(UniconsSolid.ellipsis_v)
      ],
    );
  }

  Widget _buildTime() {
    return const Text("Time");
  }

  Widget _buildReplyButton() {
    return const Text("回复");
  }

  Widget _buildFavoriteIcon() {
    return Row(
      children: [
        const Icon(
          UniconsLine.heart,
          size: 14,
        ),
        const SizedBox(width: 5),
        Text(
          widget.comment.favoriteCounts > 99
              ? "99+"
              : widget.comment.favoriteCounts.toString(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAvatar(
            url: widget.comment.user.avatar,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: _buildCommentBody(),
          ),
        ],
      ),
    );
  }
}
