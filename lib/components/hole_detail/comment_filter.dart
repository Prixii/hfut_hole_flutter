import 'package:fluent_ui/fluent_ui.dart';

class CommentFilter extends StatefulWidget {
  const CommentFilter({super.key});

  @override
  State<CommentFilter> createState() => _CommentFilterState();
}

class _CommentFilterState extends State<CommentFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.grey[80],
      child: Row(
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            width: 100,
            color: Colors.green,
          ),
          Expanded(
            child: Row(
              children: [
                SizedBox(width: 10),
                Container(width: 60, color: Colors.green),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
