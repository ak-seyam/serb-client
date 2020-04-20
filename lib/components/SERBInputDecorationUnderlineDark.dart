import 'package:flutter/material.dart';
import 'package:serb/misc/constants.dart';

InputDecoration SERBInputDecorationUnderline({String hintText}) {
  return InputDecoration(
    contentPadding: EdgeInsets.all(3.0),
    suffixIcon: GestureDetector(child: Icon(Icons.search,color: WHITE,)),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: WHITE)
    ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: WHITE)
      ),
      labelText: hintText
  );
}
