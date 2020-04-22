import 'package:flutter/material.dart';
import 'package:serb/misc/constants.dart';

class TitleBar extends StatelessWidget {
  final String title;

  TitleBar({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0)),
          gradient: LinearGradient(
              colors: [LIGHT_BLUE, CYAN],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft)),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 48
        ),
      ),
    );
  }
}
