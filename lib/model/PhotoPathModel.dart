import 'package:flutter/material.dart';

class PhotoPathModel extends ChangeNotifier{
  String _path;

  get path => this._path;
  set path (String path) {
    this._path = path;
    notifyListeners();
  }
}