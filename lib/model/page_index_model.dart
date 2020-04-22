import 'package:flutter/cupertino.dart';

class PageIndexModel extends ChangeNotifier{
  var _pageViewController = PageController(initialPage: 0);
  int _index = 0;

  jumpToPage(index){
    _pageViewController.jumpToPage(index);
    notifyListeners();
  }

  get pageViewController => this._pageViewController;

  get index => this._index;
  set index (int index) {
    this._index = index;
    notifyListeners();
  }
}