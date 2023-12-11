import 'package:fluent_ui/fluent_ui.dart';

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Center(
          child: Text(
            'Custom Shape',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height); // 左下角
    path.lineTo(size.width, size.height); // 右下角
    path.lineTo(size.width, 0); // 右上角

    // 定义异形的路径，这里是一个凹陷的形状
    path.lineTo(size.width * 0.8, size.height * 0.2);
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height * 0.1,
      size.width * 0.5,
      size.height * 0.2,
    );
    path.quadraticBezierTo(
      size.width * 0.3,
      size.height * 0.3,
      size.width * 0.2,
      size.height * 0.6,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
