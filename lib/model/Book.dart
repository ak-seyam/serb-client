
import 'package:flutter/material.dart';

class Book extends ChangeNotifier{
  String title;
  String cover;
  String author;
  List<String> categories;
  Book({this.title="",
    this.cover="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/No_sign.svg/1200px-No_sign.svg.png",
    this.author="",this.categories=const []});
  /// these are the recommended way to set but not inforced
  setTitle (String title) {
   this.title = title;
   notifyListeners();
  }
  setCover (String title) {
    this.title = title;
    notifyListeners();
  }
  setAuthor (String title) {
    this.title = title;
    notifyListeners();
  }
}
