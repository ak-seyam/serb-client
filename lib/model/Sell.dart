import './Offer.dart';

class SellingOffer {
  Offer offer;
  double _price;
  SellingOffer(Offer offer, double price) {
    this._price = price;
  }

// ------------------------- getters and setters -------------------------
  get price => this.price;

  set price(double price) {
    if (price > 0) {
      this._price = price;
    } else {
      throw Exception("Illegal pricing");
    }
  }
}
