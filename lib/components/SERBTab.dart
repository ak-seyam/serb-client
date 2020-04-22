import 'package:flutter/material.dart';
import 'package:serb/misc/constants.dart';
class SERBTab extends StatelessWidget {
  final String title;
  final selected;
  final textColor;
  SERBTab(
      {@required this.title,
        @required this.selected,
        @required this.textColor
        });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.linearToEaseOut,
      duration: Duration(milliseconds: 500),
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: selected ? WHITE : Colors.transparent),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: selected ? textColor : WHITE),
        ),
      ),
    );
  }
}
