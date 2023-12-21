import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';

class CommentFilter extends StatefulWidget {
  const CommentFilter({super.key});

  @override
  State<CommentFilter> createState() => _CommentFilterState();
}

class _CommentFilterState extends State<CommentFilter> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Text(
            "评论",
            style: fontTitle,
          ),
          Expanded(
            child: Container(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "只看楼主",
                  style: fontSmallerBody.copyWith(color: Colors.grey[80]),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(width: 10),
                Text(
                  "按热度",
                  style: fontSmallerBody.copyWith(color: Colors.grey[80]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
