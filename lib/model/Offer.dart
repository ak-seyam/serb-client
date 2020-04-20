class Offer {
  bool isAvailable;
  List<String> _images;
  String
      _state; // this is going to be the state i.e (new, used, semi-new, ..etc)

  get images => _images;
  get state => _state;
}
