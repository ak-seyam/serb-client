import 'package:flutter/material.dart';
import 'package:serb/misc/constants.dart';
import 'package:serb/misc/no_glow_effect.dart';
import 'package:serb/screens/browse_no_login.dart';

void main() => runApp(MyApp());

var tabs = {
  "tab1": Text("tab1"),
  "tab2": Text("tab2")
};
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: NoGlowBehaviour(),
          child: child,
        );
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: DARK_BLUE,
      ),
      home: SERBScaffold(tabs: tabs,)
    );
  }
}
