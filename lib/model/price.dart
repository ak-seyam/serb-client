enum Currencies { l_e, exchange }

final CurrenciesMap = {Currencies.l_e: "l.e.", Currencies.exchange: "exchange"};

enum Durations { PerMonth, PerYear, PerDay, Forever }

final DurationsMap = {
  Durations.PerDay: "/Day",
  Durations.PerMonth: "/Month",
  Durations.PerYear: "/Year",
  Durations.Forever: "",
};

class Price {
  Currencies _currency;
  Durations _duration;
  double _value;

  Price(double value, Currencies currency, Durations duration) {
    _currency = currency;
    _duration = duration;
    _value = value;
  }

  getPrice() {
    return "$_value ${CurrenciesMap[_currency]} ${DurationsMap[_duration]}";
  }
}
