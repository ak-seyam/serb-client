import 'package:flutter/material.dart';
import 'package:serb/misc/constants.dart';

InputDecoration SERBInputDecoration({@required String inputLabel}) {
  return InputDecoration(
      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
      labelText: inputLabel
  );
}
