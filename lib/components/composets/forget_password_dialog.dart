import 'package:flutter/material.dart';
import 'package:serb/components/Button.dart';
import 'package:serb/components/SERBInputDecoration.dart';

class ForgotPasswordDialog extends StatefulWidget {
  @override
  _ForgotPasswordDialogState createState() => _ForgotPasswordDialogState();
}

class _ForgotPasswordDialogState extends State<ForgotPasswordDialog> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(32),
        height: 240,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
        child: Form(
          key: _formKey,
          child: Material(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    "Forgot password",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 24,
                        fontFamily: "roboto"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "You will recive a messege containing a temporary password",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 12,
                        fontFamily: "roboto"),
                  ),
                ),
                TextFormField(
                  decoration: SERBInputDecoration(inputLabel: "email"),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "please enter your email";
                    }
                    return null;
                  },
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SERBButton(
                      onTap: () {
                        if (_formKey.currentState.validate()) {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text("sending..."),
                          ));
                        }
                      },
                      text: "Send",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
