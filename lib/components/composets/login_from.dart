import 'package:flutter/material.dart';
import 'package:serb/components/SERBInputDecoration.dart';
import 'package:serb/components/composets/forget_password_dialog.dart';
import 'package:serb/misc/constants.dart';
import 'package:serb/screens/browse_login.dart';
import 'package:serb/screens/sign_up_screen.dart';
import '../Button.dart';

class SERBLoginFrom extends StatefulWidget {
  @override
  _SERBLoginFromState createState() => _SERBLoginFromState();
}

class _SERBLoginFromState extends State<SERBLoginFrom> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 8.0,
              ),
              TextFormField(
                //username
                keyboardType: TextInputType.text,
                decoration: SERBInputDecoration(inputLabel: "username"),
                validator: (value) {
                  if (value.isEmpty) {
                    return "please enter the username";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              TextFormField(
                //password
                keyboardType: TextInputType.text,
                decoration: SERBInputDecoration(inputLabel: "password"),
                obscureText: true,
                validator: (value) {
                  if (value.isEmpty) {
                    return 'please enter the password';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              SERBButton(
                text: "login",
                onTap: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("connecting..."),
                    ));
                    //TODO login logic
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) => BrowseLogin()), (
                            route) => false);
                  }
                },
              ),
              GestureDetector(
                onTap: (){
                  showDialog(context: context,builder: (_) => ForgotPasswordDialog());
                },
                child: Text(
                  "Forgot your password?",
                  style: TextStyle(color: BLACK),
                ),
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
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                        },
                        child: Text(
                          "Sign up now!",
                          style: TextStyle(color: BLACK),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
