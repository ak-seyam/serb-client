import 'package:flutter/material.dart';
import 'package:serb/components/Dialog.dart';
import 'package:serb/components/composets/login_from.dart';
import 'package:serb/misc/GradCircule.dart';
import 'package:serb/misc/LogoLight.dart';
import 'package:serb/misc/constants.dart';

class LoginScreen extends StatelessWidget {
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
              start: LIGHT_BLUE,
              end: GREEN,
              radius: width,
            ),
          ),
          Positioned(
            bottom: -70,
            right: -70,
            child: GradientCircle(
              start: DARK_BLUE,
              end: LIGHT_BLUE,
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
                    SERBLoginFrom(),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "Forgot your password?",
                      style: TextStyle(color: BLACK),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16.0, 0, 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "New here? ",
                            style: TextStyle(color: Colors.grey),
                          ),
                          GestureDetector(
                              child: Text(
                            "Sign up now!",
                            style: TextStyle(color: BLACK),
                          ))
                        ],
                      ),
                    )
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
