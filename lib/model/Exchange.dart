import './Offer.dart';

class ExchangingOffer {
  Offer offer;
  double _negotiationPrice;
  ExchangingOffer(Offer offer, double negotiationPrice) {
    this._negotiationPrice = negotiationPrice;
  }

// ------------------------- getters and setters -------------------------
  get negotiationPrice => this.negotiationPrice;

  set negotiationPrice(double negotiationPrice) {
    if (negotiationPrice > 0) {
      this._negotiationPrice = negotiationPrice;
    } else {
      throw Exception("Illegal pricing");
    }
  }
}
