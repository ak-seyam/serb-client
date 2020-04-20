import 'package:flutter/material.dart';
import '../misc/constants.dart';

class SERBButton extends StatelessWidget {
  final String text;
  final void Function() onTap;

  SERBButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(GLOBAL_PADDING),
        padding:
            EdgeInsets.symmetric(horizontal: 16.0, vertical: GLOBAL_PADDING),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: BUTTON_COLOR),
        child: Text(
          text,
          style: TextStyle(
              color: BUTTON_TEXT_COLOR,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
