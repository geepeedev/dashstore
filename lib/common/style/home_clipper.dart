import 'package:flutter/material.dart';

class BackgrounCLipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    final firstCurve = Offset(0, size.height - 20);
    final secondCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstCurve.dx,
      firstCurve.dy,
      secondCurve.dx,
      secondCurve.dy,
    );
    // path.lineTo(size.width, 0);
    final firstCurve2 = Offset(0, size.height - 20);
    final secondCurve2 = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
      firstCurve2.dx,
      firstCurve2.dy,
      secondCurve2.dx,
      secondCurve2.dy,
    );
    final firstCurve3 = Offset(size.width, size.height - 20);
    final secondCurve3 = Offset(size.width, size.height);
    path.quadraticBezierTo(
      firstCurve3.dx,
      firstCurve3.dy,
      secondCurve3.dx,
      secondCurve3.dy,
    );

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
