import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/hole_detail/comment_list.dart';
import 'package:hfut_hole_flutter/components/hole_detail/hole_detail.dart';

class HoleDetailPage extends StatelessWidget {
  const HoleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: Row(
        children: [
          const Expanded(flex: 2, child: HoleDetail()),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[50],
              child: const CommentList(),
            ),
          )
        ],
      ),
    );
  }
}
