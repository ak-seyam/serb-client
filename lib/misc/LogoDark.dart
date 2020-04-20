import 'package:flutter/material.dart';
import 'package:serb/misc/constants.dart';

class LogoDark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "SERB",
          style: TextStyle(
              fontFamily: "playfair",
              fontSize: 24,
              color: WHITE,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
