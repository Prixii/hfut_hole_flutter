import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/hole_detail/comment_filter.dart';
import 'package:hfut_hole_flutter/components/hole_detail/comment_list_tile.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';
import 'package:hfut_hole_flutter/util/widget_util.dart';

class CommentList extends ConsumerStatefulWidget {
  const CommentList({super.key});

  @override
  ConsumerState<CommentList> createState() => _CommentListState();
}

class _CommentListState extends ConsumerState<CommentList> {
  Widget _buildCommentBox() {
    return Container(
        child: buildMetroTextBox(
      controller: TextEditingController(),
      maxLines: 5,
    ));
  }

  @override
  Widget build(BuildContext context) {
    var comments = ref.watch(pageStateProvider).hole.comments;
    return Column(
      children: [
        const CommentFilter(),
        Expanded(
            child: ListView.builder(
                itemBuilder: (context, index) => CommentListTile(
                      comment: comments[index],
                    ),
                itemCount: comments.length)),
        _buildCommentBox(),
      ],
    );
  }
}
