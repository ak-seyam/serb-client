import 'package:flutter/material.dart';
import 'package:serb/components/composets/login_from.dart';
import 'package:serb/components/composets/welcom_screens.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen(child: SERBLoginFrom());
  }
}
