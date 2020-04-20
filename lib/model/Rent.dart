import './Offer.dart';

class RentingOffer {
  Offer offer;
  double _pricePerDay;
  DateTime _offerEndingTime;

  RentingOffer(Offer offer, double pricePerDay, DateTime offerEndingTime) {
    this._pricePerDay = _pricePerDay;
    this._offerEndingTime = offerEndingTime;
  }

// ------------------------- getters and setters -------------------------
  get pricePerDay => this._pricePerDay;

  set pricePerDay(double pricePerDay) {
    if (pricePerDay > 0) {
      this._pricePerDay = pricePerDay;
    } else {
      throw Exception("Illegal pricing");
    }
  }

  get offerEndingTime => this._offerEndingTime;
  set offerEndingTime(DateTime offerEndingTime) {
    this._offerEndingTime = offerEndingTime;
  }
}
