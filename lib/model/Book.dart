import 'package:flutter/material.dart';

class Book extends ChangeNotifier {
  String title;
  String cover; // a url of the cover
  String author;
  String ISBN;
  List<String> categories;

  Book(
      {this.ISBN = "",
      this.title = "",
      this.cover =
          "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/No_sign.svg/1200px-No_sign.svg.png",
      this.author = "",
      this.categories = const []});

  setFromBookAndNotify({@required Book book}) {
    this.title = book.title;
    this.ISBN = book.ISBN;
    this.cover = book.cover;
    this.author = book.author;
    this.categories = book.categories;
    notifyListeners();
  }

  setCoverAndNotify(String cover) {
    this.cover = cover;
    notifyListeners();
  }
  setTitleAndNotify(String title) {
    this.title = title;
    notifyListeners();
  }

  setISBNAndNotify(String ISBN) {
    this.ISBN = ISBN;
    notifyListeners();
  }

  setAuthorAndNotify(String author) {
    this.author = author;
    notifyListeners();
  }
}
