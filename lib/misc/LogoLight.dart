import 'package:flutter/material.dart';
import 'package:serb/misc/constants.dart';
class LogoLight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "SERB",
          style: TextStyle(fontFamily: "playfair",fontSize: 36,color: BLACK,fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
