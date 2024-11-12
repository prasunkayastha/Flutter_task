import 'package:flutter/material.dart';

class CurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height * 0.6);

    // First curve (left side)
    path.quadraticBezierTo(
      size.width * 0.15,
      size.height * 0.8,
      size.width * 0.3,
      size.height * 0.7,
    );

    // Second curve (center dip)
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.6,
      size.width * 0.7,
      size.height * 0.8,
    );

    // Third curve (right side)
    path.quadraticBezierTo(
      size.width * 0.85,
      size.height * 0.9,
      size.width,
      size.height * 0.7,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
