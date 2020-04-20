import 'package:flutter/material.dart';

class GradientCircle extends StatelessWidget {
  final double radius;
  final Color start, end;

  GradientCircle({@required this.radius,@required this.start,@required this.end});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          gradient: LinearGradient(
              colors: <Color>[start, end],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft)),
    );
  }
}
