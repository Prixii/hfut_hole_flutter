import 'package:fluent_ui/fluent_ui.dart';
import 'package:hfut_hole_flutter/gen/assets.gen.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.height});
  final double height;

  Widget _buildUserInfo() {
    return Row(
      children: [
        ClipOval(child: Assets.images.avatar.image(width: 30, height: 30)),
        Text("This is UserName")
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey[40],
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("This is Title"),
              _buildUserInfo(),
            ],
          ),
        ),
      ],
    );
  }
}
