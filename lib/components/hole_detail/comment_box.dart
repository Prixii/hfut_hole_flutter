import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hfut_hole_flutter/components/common/hoverable_icon.dart';
import 'package:hfut_hole_flutter/theme/theme.dart';
import 'package:hfut_hole_flutter/util/widget_util.dart';
import 'package:unicons/unicons.dart';

class CommentBox extends ConsumerStatefulWidget {
  const CommentBox({
    super.key,
  });

  @override
  ConsumerState<CommentBox> createState() => _CommentBoxState();
}

class _CommentBoxState extends ConsumerState<CommentBox> {
  Color borderColor = Colors.grey[50];
  late Color sendButtonColor;

  late TextEditingController _mainCommentController;
  late FocusNode _mainFocusNode;

  @override
  void initState() {
    sendButtonColor = Colors.grey[100];

    _mainFocusNode = FocusNode();
    _mainCommentController = TextEditingController();

    _mainFocusNode.addListener(() {
      if (_mainFocusNode.hasFocus) {
        setState(() {
          borderColor = Colors.grey[100];
        });
      } else {
        setState(() {
          borderColor = Colors.grey[50];
        });
      }
    });
    super.initState();
  }

  Column _buildButtonGroup() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            _buildEmojiButton(),
            const SizedBox(width: 4),
            _buildSendButton()
          ],
        ),
      ],
    );
  }

  Widget _buildSendButton() {
    return GestureDetector(
      onTap: () {
        if (_mainCommentController.text.isNotEmpty) {
          _mainCommentController.clear();
          setState(() {
            sendButtonColor = Colors.grey[100];
          });
        }
      },
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: sendButtonColor,
        ),
        child: const Icon(
          UniconsLine.message,
          color: Colors.white,
        ),
      ),
    );
  }

  Container _buildEmojiButton() {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: HoverableIcon(
        iconData: UniconsLine.smile_squint_wink_alt,
        onTap: () => {},
      ),
    );
  }

  Widget _buildMessageBox() {
    return buildMetroTextBox(
      controller: _mainCommentController,
      focusNode: _mainFocusNode,
      maxLines: 5,
      showBorder: false,
      onChanged: (_) => {
        if (_mainCommentController.text.isEmpty)
          {
            setState(() {
              sendButtonColor = Colors.grey[100];
            })
          }
        else
          {
            setState(() {
              sendButtonColor = primaryColor;
            })
          }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: borderColor,
          )),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          children: [
            Expanded(
              child: _buildMessageBox(),
            ),
            _buildButtonGroup(),
          ],
        ),
      ),
    );
  }
}
