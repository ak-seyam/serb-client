import 'package:flutter/material.dart';
import 'package:serb/components/Dialog.dart';
import 'package:serb/components/composets/login_from.dart';
import 'package:serb/misc/GradCircule.dart';
import 'package:serb/misc/LogoLight.dart';
import 'package:serb/misc/constants.dart';

class WelcomeScreen extends StatelessWidget {
  final List<Color> colors;
  final Widget child;
  WelcomeScreen({this.colors=const [LIGHT_BLUE,GREEN,DARK_BLUE,LIGHT_BLUE],@required this.child});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -70.0,
            left: -70.0,
            child: GradientCircle(
              start: colors[0],
              end: colors[1],
              radius: width,
            ),
          ),
          Positioned(
            bottom: -70,
            right: -70,
            child: GradientCircle(
              start: colors[2],
              end: colors[3],
              radius: width,
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: SERBDialog(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 24.0, 0.0, 12.0),
                          child: Column(
                            children: <Widget>[
                              LogoLight(),
                              Text(
                                "Join the community",
                                style: TextStyle(fontFamily: "bhai"),
                              )
                            ],
                          ),
                        ),
                        child,
                      ],
                    ),
                  )),
            ),
          ),
          Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "COPYRIGHTS RELATED TEXT",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10.0, color: BLACK),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
