import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:serb/components/Button.dart';
import 'package:serb/components/SERBInputDecoration.dart';
import 'package:serb/samples/countries_cities.dart';

class SignUpFrom extends StatefulWidget {
  @override
  _SignUpFromState createState() => _SignUpFromState();
}

class _SignUpFromState extends State<SignUpFrom> {
  final _fromKey = GlobalKey<FormState>();
  TextEditingController _passwordController= TextEditingController();
  String _country;
  String _city;

  @override
  void initState() {
    _country = countries.keys.toList()[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _fromKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: SERBInputDecoration(inputLabel: "email"),
            validator: (value) {
              if (value.isEmpty) {
                return "please enter the email";
              }
              return null;
            },
          ),
          TextFormField(
            controller: _passwordController,
            decoration: SERBInputDecoration(inputLabel: "password"),
            validator: (value) {
              if (value.isEmpty) {
                return "please enter the password";
              }
              return null;
            },
          ),
          TextFormField(
            decoration: SERBInputDecoration(inputLabel: "re-write password"),
            validator: (value) {
              if (value != _passwordController.text) {
                return "passwords are't match";
              }
              return null;
            },
          ),
          Text("Address"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DropdownButton(
                  hint: Text("Country"),
                  value: _country,
                  items: countries.keys.map((String e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  onChanged: (value) {
                    _country = value;
                    print("country is >>>>> $_country");
                    _city = null;
                    setState(() {});
                  }),
              SizedBox(
                width: 24,
              ),
              DropdownButton(
                  hint: Text("City"),
                  value: _city,
                  items: countries[_country].map((String e) {
                    return DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    );
                  }).toList(),
                  onChanged: (value) {
                    print("city is >>>>> $_city");
                    _city = value;
                    setState(() {});
                  }),
            ],
          ),
          TextFormField(
            decoration: SERBInputDecoration(inputLabel: "full address"),
            validator: (value){
              if(value.isEmpty){
                return 'please enter the full address';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: SERBInputDecoration(inputLabel: "phone number"),
            validator: (value){
              //TODO add phone number validation
              if(value.isEmpty){
                return 'please enter the full address';
              }
              return null;
            },
          ),
          SERBButton(
            onTap: () {
              if (_fromKey.currentState.validate()) {
                Scaffold.of(context).showSnackBar(SnackBar(content: Text("processing"),));
                Navigator.of(context).pop();
              }
            },
            text: "Sign-up",
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
