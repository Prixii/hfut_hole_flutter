import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.url,
    this.size = 30,
  });

  final String url;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Stack(children: [
        Container(
          color: Colors.white,
          width: 30,
          height: 30,
        ),
        CachedNetworkImage(
          imageUrl: url,
          width: 30,
          height: 30,
        ),
      ]),
    );
  }
}
