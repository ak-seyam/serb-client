import 'package:flutter/material.dart';
import 'package:serb/components/SERBInputDecoration.dart';
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
                decoration: SERBInputDecoration(hintText: "username"),
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
                decoration: SERBInputDecoration(hintText: "password"),
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
                  }
                },
              )
            ],
          ),
        ));
  }
}
