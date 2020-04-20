import 'package:flutter/material.dart';

class SERBDialog extends StatelessWidget {
  final Widget child;

  SERBDialog({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24.0),
      padding: EdgeInsets.all(16.0),
      decoration:
          BoxDecoration(color: Color(0xFFffffff), boxShadow: <BoxShadow>[
        BoxShadow(
            color: Color(0xaaaaaaaa),
            blurRadius: 5.0,
            offset: Offset(2.0, 2.0))
      ]),
      child: child,
    );
  }
}
