import 'package:flutter/material.dart';
import 'package:serb/misc/constants.dart';

class BottomTitle extends StatelessWidget {
  final String title;
  BottomTitle({@required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8.0, 8.0, 32.0, 8.0),
      alignment: Alignment.centerLeft,
      height: 40,
      decoration: BoxDecoration(
        color: DARK_BLUE,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40)
        )
      ),
      child: Text(
        title,
        style: TextStyle(
          color: WHITE,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
