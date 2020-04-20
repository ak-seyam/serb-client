import 'package:flutter/material.dart';
import 'package:serb/misc/constants.dart';

InputDecoration SERBInputDecoration({String hintText}) {
  return InputDecoration(
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      labelText: hintText
  );
}
