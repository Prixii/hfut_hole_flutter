import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/components/hole_detail/comment_list.dart';
import 'package:hfut_hole_flutter/components/hole_detail/hole_detail.dart';

class HoleDetailPage extends StatelessWidget {
  const HoleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      padding: EdgeInsets.zero,
      content: Row(
        children: [
          Expanded(flex: 3, child: HoleDetail()),
          Expanded(
            flex: 2,
            child: CommentList(),
          )
        ],
      ),
    );
  }
}
