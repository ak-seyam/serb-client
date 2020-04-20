import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:serb/components/composets/appbar.dart';
import 'package:serb/misc/constants.dart';

class SERBScaffold extends StatefulWidget {
  final Map<String, Widget> tabs;

  SERBScaffold({@required this.tabs});

  @override
  _SERBScaffoldState createState() => _SERBScaffoldState();
}

class _SERBScaffoldState extends State<SERBScaffold> {
  final pageViewController = PageController(
    initialPage: 0,
  );
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    var pageView = PageView(
      controller: pageViewController,
      children: widget.tabs.values.toList(),
      onPageChanged: (index) {
        _index = index;
        setState(() {});
      },
    );
    return Material(
      child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: <Widget>[
              SERBAppBar(widget.tabs.keys.toList(),_index),
              Expanded(
                child: Container(
                  child: pageView,
                ),
              )
            ],
          )),
    );
  }
}

