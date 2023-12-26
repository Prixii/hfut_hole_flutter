import 'package:fluent_ui/fluent_ui.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(color: Colors.grey),
          ),
          Expanded(
            flex: 2,
            child: Container(color: Colors.grey[50]),
          ),
        ],
      ),
    );
  }
}
