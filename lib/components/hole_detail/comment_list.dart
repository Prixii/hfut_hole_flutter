import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/hole_detail/comment_box.dart';
import 'package:hfut_hole_flutter/components/hole_detail/comment_filter.dart';
import 'package:hfut_hole_flutter/components/hole_detail/comment_list_tile.dart';
import 'package:hfut_hole_flutter/riverpod/global/page_state_provider.dart';

class CommentList extends ConsumerStatefulWidget {
  const CommentList({super.key});

  @override
  ConsumerState<CommentList> createState() => _CommentListState();
}

class _CommentListState extends ConsumerState<CommentList> {
  @override
  Widget build(BuildContext context) {
    var comments = ref.watch(pageStateProvider).holeState.hole.comments;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            const CommentFilter(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) =>
                    CommentListTile(comment: comments[index]),
                itemCount: comments.length,
              ),
            ),
            const CommentBox(),
          ],
        ),
      ),
    );
  }
}
