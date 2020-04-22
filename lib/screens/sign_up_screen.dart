import 'package:flutter/material.dart';
import 'package:serb/components/composets/sign_up_form.dart';
import 'package:serb/components/composets/welcom_screens.dart';
import 'package:serb/misc/constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomeScreen(
        colors: [PINK, DARK_BLUE, CYAN, GREEN], child: SignUpFrom());
  }
}
