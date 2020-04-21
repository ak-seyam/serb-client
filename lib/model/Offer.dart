import 'package:serb/model/Book.dart';
import 'package:serb/model/User.dart';
import 'package:serb/model/price.dart';



class Offer {
  final Price price;
  final bool isAvailable;
  final List<String> images;
  final String
      state; // this is going to be the state i.e (new, used, semi-new, ..etc)
  final Book book;
  final User owner;
  Offer({this.owner,this.book,this.isAvailable, this.images, this.price, this.state});
}
