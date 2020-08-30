class OffersData {
  String status;
  String serverTimeZone;
  String message;
  int requestId;
  bool isRound;
  bool isMulty;
  bool isSchedule;
  String currency;
  List<String> availableCurrencies;
  String sort;
  List<Directions> directions;
  List<Offers> offers;
  OwOffers owOffers;
  int travelPolicyId;

  OffersData(
      {this.status,
      this.serverTimeZone,
      this.message,
      this.requestId,
      this.isRound,
      this.isMulty,
      this.isSchedule,
      this.currency,
      this.availableCurrencies,
      this.sort,
      this.directions,
      this.offers,
      this.owOffers,
      this.travelPolicyId});

  OffersData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    serverTimeZone = json['server_time_zone'];
    message = json['message'];
    requestId = json['request_id'];
    isRound = json['is_round'];
    isMulty = json['is_multy'];
    isSchedule = json['is_schedule'];
    currency = json['currency'];
    availableCurrencies = json['available_currencies'].cast<String>();
    sort = json['sort'];
    if (json['directions'] != null) {
      directions = new List<Directions>();
      json['directions'].forEach((v) {
        directions.add(new Directions.fromJson(v));
      });
    }
    if (json['offers'] != null) {
      offers = new List<Offers>();
      json['offers'].forEach((v) {
        offers.add(new Offers.fromJson(v));
      });
    }
    owOffers = json['ow_offers'] != null
        ? new OwOffers.fromJson(json['ow_offers'])
        : null;
    travelPolicyId = json['travel_policy_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['server_time_zone'] = this.serverTimeZone;
    data['message'] = this.message;
    data['request_id'] = this.requestId;
    data['is_round'] = this.isRound;
    data['is_multy'] = this.isMulty;
    data['is_schedule'] = this.isSchedule;
    data['currency'] = this.currency;
    data['available_currencies'] = this.availableCurrencies;
    data['sort'] = this.sort;
    if (this.directions != null) {
      data['directions'] = this.directions.map((v) => v.toJson()).toList();
    }
    if (this.offers != null) {
      data['offers'] = this.offers.map((v) => v.toJson()).toList();
    }
    if (this.owOffers != null) {
      data['ow_offers'] = this.owOffers.toJson();
    }
    data['travel_policy_id'] = this.travelPolicyId;
    return data;
  }
}

class Directions {
  int dirNumber;
  String date;
  String departureCode;
  String departureName;
  String departureCountry;
  String arrivalCode;
  String arrivalName;
  String arrivalCountry;

  Directions(
      {this.dirNumber,
      this.date,
      this.departureCode,
      this.departureName,
      this.departureCountry,
      this.arrivalCode,
      this.arrivalName,
      this.arrivalCountry});

  Directions.fromJson(Map<String, dynamic> json) {
    dirNumber = json['dir_number'];
    date = json['date'];
    departureCode = json['departure_code'];
    departureName = json['departure_name'];
    departureCountry = json['departure_country'];
    arrivalCode = json['arrival_code'];
    arrivalName = json['arrival_name'];
    arrivalCountry = json['arrival_country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dir_number'] = this.dirNumber;
    data['date'] = this.date;
    data['departure_code'] = this.departureCode;
    data['departure_name'] = this.departureName;
    data['departure_country'] = this.departureCountry;
    data['arrival_code'] = this.arrivalCode;
    data['arrival_name'] = this.arrivalName;
    data['arrival_country'] = this.arrivalCountry;
    return data;
  }
}

class Offers {
  String carrierCode;
  String carrierName;
  String carrierLogo;
  int minPrice;
  List<Offersin> offers;

  Offers(
      {this.carrierCode,
      this.carrierName,
      this.carrierLogo,
      this.minPrice,
      this.offers});

  Offers.fromJson(Map<String, dynamic> json) {
    carrierCode = json['carrier_code'];
    carrierName = json['carrier_name'];
    carrierLogo = json['carrier_logo'];
    minPrice = json['min_price'];
    if (json['offers'] != null) {
      offers = new List<Offersin>();
      json['offers'].forEach((v) {
        offers.add(new Offersin.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['carrier_code'] = this.carrierCode;
    data['carrier_name'] = this.carrierName;
    data['carrier_logo'] = this.carrierLogo;
    data['min_price'] = this.minPrice;
    if (this.offers != null) {
      data['offers'] = this.offers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Offersin {
  int minPrice;
  List<Segments> segments;

  Offersin({this.minPrice, this.segments});

  Offersin.fromJson(Map<String, dynamic> json) {
    minPrice = json['min_price'];
    if (json['segments'] != null) {
      segments = new List<Segments>();
      json['segments'].forEach((v) {
        segments.add(new Segments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['min_price'] = this.minPrice;
    if (this.segments != null) {
      data['segments'] = this.segments.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Segments {
  int segmentId;
  String buyId;
  bool isPolicyFail;
  Null policyFailDetails;
  bool isOw;
  int dirNumber;
  String flightNumber;
  String departureAirport;
  int departureTimestamp;
  String departureDate;
  String departureTime;
  String arrivalAirport;
  int arrivalTimestamp;
  String arrivalDate;
  String arrivalTime;
  String durationFormated;
  int durationMinutes;
  int stops;
  List<FlightsInfo> flightsInfo;
  bool servicesAvailable;
  bool otherPriceAvailable;
  bool seatmapAvailable;
  String tariff;
  bool provFareType;
  String clas;
  int seats;
  int price;
  List<PriceDetails> priceDetails;
  List<Null> priceDetailsExtra;
  List<Null> pricelist;
  String baggage;
  bool priceFareFamily;
  String fareType;
  FareMessages fareMessages;
  String fareFamily;
  String gds;
  bool sitaCalculate;
  String pccName;
  String pccOffice;
  int fee;
  int comm;
  bool isSubsidy;
  Null subsidyInstruction;
  Null discountAttention;
  bool seatsRequired;
  String hash;
  String priceHash;

  Segments(
      {this.segmentId,
      this.buyId,
      this.isPolicyFail,
      this.policyFailDetails,
      this.isOw,
      this.dirNumber,
      this.flightNumber,
      this.departureAirport,
      this.departureTimestamp,
      this.departureDate,
      this.departureTime,
      this.arrivalAirport,
      this.arrivalTimestamp,
      this.arrivalDate,
      this.arrivalTime,
      this.durationFormated,
      this.durationMinutes,
      this.stops,
      this.flightsInfo,
      this.servicesAvailable,
      this.otherPriceAvailable,
      this.seatmapAvailable,
      this.tariff,
      this.provFareType,
      this.clas,
      this.seats,
      this.price,
      this.priceDetails,
      this.priceDetailsExtra,
      this.pricelist,
      this.baggage,
      this.priceFareFamily,
      this.fareType,
      this.fareMessages,
      this.fareFamily,
      this.gds,
      this.sitaCalculate,
      this.pccName,
      this.pccOffice,
      this.fee,
      this.comm,
      this.isSubsidy,
      this.subsidyInstruction,
      this.discountAttention,
      this.seatsRequired,
      this.hash,
      this.priceHash});

  Segments.fromJson(Map<String, dynamic> json) {
    segmentId = json['segment_id'];
    buyId = json['buy_id'];
    isPolicyFail = json['is_policy_fail'];
    policyFailDetails = json['policy_fail_details'];
    isOw = json['is_ow'];
    dirNumber = json['dir_number'];
    flightNumber = json['flight_number'];
    departureAirport = json['departure_airport'];
    departureTimestamp = json['departure_timestamp'];
    departureDate = json['departure_date'];
    departureTime = json['departure_time'];
    arrivalAirport = json['arrival_airport'];
    arrivalTimestamp = json['arrival_timestamp'];
    arrivalDate = json['arrival_date'];
    arrivalTime = json['arrival_time'];
    durationFormated = json['duration_formated'];
    durationMinutes = json['duration_minutes'];
    stops = json['stops'];
    if (json['flights_info'] != null) {
      flightsInfo = new List<FlightsInfo>();
      json['flights_info'].forEach((v) {
        flightsInfo.add(new FlightsInfo.fromJson(v));
      });
    }
    servicesAvailable = json['services_available'];
    otherPriceAvailable = json['other_price_available'];
    seatmapAvailable = json['seatmap_available'];
    tariff = json['tariff'];
    provFareType = json['prov_fare_type'];
    clas = json['class'];
    seats = json['seats'];
    price = json['price'];
    if (json['price_details'] != null) {
      priceDetails = new List<PriceDetails>();
      json['price_details'].forEach((v) {
        priceDetails.add(new PriceDetails.fromJson(v));
      });
    }
    if (json['price_details_extra'] != null) {
      priceDetailsExtra = new List<Null>();
      // json['price_details_extra'].forEach((v) { priceDetailsExtra.add(new Null.fromJson(v)); });
    }
    if (json['pricelist'] != null) {
      pricelist = new List<Null>();
      // json['pricelist'].forEach((v) { pricelist.add(new Null.fromJson(v)); });
    }
    baggage = json['baggage'];
    priceFareFamily = json['price_fare_family'];
    fareType = json['fare_type'];
    fareMessages = json['fare_messages'] != null
        ? new FareMessages.fromJson(json['fare_messages'])
        : null;
    fareFamily = json['fare_family'];
    gds = json['gds'];
    sitaCalculate = json['sita_calculate'];
    pccName = json['pcc_name'];
    pccOffice = json['pcc_office'];
    fee = json['fee'];
    comm = json['comm'];
    isSubsidy = json['is_subsidy'];
    subsidyInstruction = json['subsidy_instruction'];
    discountAttention = json['discount_attention'];
    seatsRequired = json['seats_required'];
    hash = json['hash'];
    priceHash = json['price_hash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['segment_id'] = this.segmentId;
    data['buy_id'] = this.buyId;
    data['is_policy_fail'] = this.isPolicyFail;
    data['policy_fail_details'] = this.policyFailDetails;
    data['is_ow'] = this.isOw;
    data['dir_number'] = this.dirNumber;
    data['flight_number'] = this.flightNumber;
    data['departure_airport'] = this.departureAirport;
    data['departure_timestamp'] = this.departureTimestamp;
    data['departure_date'] = this.departureDate;
    data['departure_time'] = this.departureTime;
    data['arrival_airport'] = this.arrivalAirport;
    data['arrival_timestamp'] = this.arrivalTimestamp;
    data['arrival_date'] = this.arrivalDate;
    data['arrival_time'] = this.arrivalTime;
    data['duration_formated'] = this.durationFormated;
    data['duration_minutes'] = this.durationMinutes;
    data['stops'] = this.stops;
    if (this.flightsInfo != null) {
      data['flights_info'] = this.flightsInfo.map((v) => v.toJson()).toList();
    }
    data['services_available'] = this.servicesAvailable;
    data['other_price_available'] = this.otherPriceAvailable;
    data['seatmap_available'] = this.seatmapAvailable;
    data['tariff'] = this.tariff;
    data['prov_fare_type'] = this.provFareType;
    data['class'] = this.clas;
    data['seats'] = this.seats;
    data['price'] = this.price;
    if (this.priceDetails != null) {
      data['price_details'] = this.priceDetails.map((v) => v.toJson()).toList();
    }
    if (this.priceDetailsExtra != null) {
      // data['price_details_extra'] = this.priceDetailsExtra.map((v) => v.toJson()).toList();
    }
    if (this.pricelist != null) {
      // data['pricelist'] = this.pricelist.map((v) => v.toJson()).toList();
    }
    data['baggage'] = this.baggage;
    data['price_fare_family'] = this.priceFareFamily;
    data['fare_type'] = this.fareType;
    if (this.fareMessages != null) {
      data['fare_messages'] = this.fareMessages.toJson();
    }
    data['fare_family'] = this.fareFamily;
    data['gds'] = this.gds;
    data['sita_calculate'] = this.sitaCalculate;
    data['pcc_name'] = this.pccName;
    data['pcc_office'] = this.pccOffice;
    data['fee'] = this.fee;
    data['comm'] = this.comm;
    data['is_subsidy'] = this.isSubsidy;
    data['subsidy_instruction'] = this.subsidyInstruction;
    data['discount_attention'] = this.discountAttention;
    data['seats_required'] = this.seatsRequired;
    data['hash'] = this.hash;
    data['price_hash'] = this.priceHash;
    return data;
  }
}

class FlightsInfo {
  String operatingAirlineCode;
  String operatingAirlineName;
  String operatingAirlineLogo;
  String marketingAirlineCode;
  String marketingAirlineName;
  String marketingAirlineLogo;
  String flightNumber;
  String flightNumberPrint;
  String airplaneCode;
  String airplaneName;
  String departureCountry;
  String departureCity;
  String departureCityCode;
  List<Null> routeLocales;
  String departureAirport;
  String departureTerminal;
  String departureDate;
  String departureLocalTime;
  String departureTimezone;
  int departureLocalTimestamp;
  String arrivalCountry;
  String arrivalCity;
  String arrivalCityCode;
  String arrivalAirport;
  String arrivalTerminal;
  String arrivalDate;
  String arrivalLocalTime;
  String arrivalTimezone;
  int arrivalLocalTimestamp;
  String durationFormated;
  int durationMinutes;
  String stopTime;
  int stopTimeMinutes;
  bool techstop;
  Ifs ifs;
  Null delays;
  String baggage;
  String serviceClass;
  String bookingClass;

  FlightsInfo(
      {this.operatingAirlineCode,
      this.operatingAirlineName,
      this.operatingAirlineLogo,
      this.marketingAirlineCode,
      this.marketingAirlineName,
      this.marketingAirlineLogo,
      this.flightNumber,
      this.flightNumberPrint,
      this.airplaneCode,
      this.airplaneName,
      this.departureCountry,
      this.departureCity,
      this.departureCityCode,
      this.routeLocales,
      this.departureAirport,
      this.departureTerminal,
      this.departureDate,
      this.departureLocalTime,
      this.departureTimezone,
      this.departureLocalTimestamp,
      this.arrivalCountry,
      this.arrivalCity,
      this.arrivalCityCode,
      this.arrivalAirport,
      this.arrivalTerminal,
      this.arrivalDate,
      this.arrivalLocalTime,
      this.arrivalTimezone,
      this.arrivalLocalTimestamp,
      this.durationFormated,
      this.durationMinutes,
      this.stopTime,
      this.stopTimeMinutes,
      this.techstop,
      this.ifs,
      this.delays,
      this.baggage,
      this.serviceClass,
      this.bookingClass});

  FlightsInfo.fromJson(Map<String, dynamic> json) {
    operatingAirlineCode = json['operating_airline_code'];
    operatingAirlineName = json['operating_airline_name'];
    operatingAirlineLogo = json['operating_airline_logo'];
    marketingAirlineCode = json['marketing_airline_code'];
    marketingAirlineName = json['marketing_airline_name'];
    marketingAirlineLogo = json['marketing_airline_logo'];
    flightNumber = json['flight_number'];
    flightNumberPrint = json['flight_number_print'];
    airplaneCode = json['airplane_code'];
    airplaneName = json['airplane_name'];
    departureCountry = json['departure_country'];
    departureCity = json['departure_city'];
    departureCityCode = json['departure_city_code'];
    if (json['route_locales'] != null) {
      routeLocales = new List<Null>();
      // json['route_locales'].forEach((v) { routeLocales.add(new Null.fromJson(v)); });
    }
    departureAirport = json['departure_airport'];
    departureTerminal = json['departure_terminal'];
    departureDate = json['departure_date'];
    departureLocalTime = json['departure_local_time'];
    departureTimezone = json['departure_timezone'];
    departureLocalTimestamp = json['departure_local_timestamp'];
    arrivalCountry = json['arrival_country'];
    arrivalCity = json['arrival_city'];
    arrivalCityCode = json['arrival_city_code'];
    arrivalAirport = json['arrival_airport'];
    arrivalTerminal = json['arrival_terminal'];
    arrivalDate = json['arrival_date'];
    arrivalLocalTime = json['arrival_local_time'];
    arrivalTimezone = json['arrival_timezone'];
    arrivalLocalTimestamp = json['arrival_local_timestamp'];
    durationFormated = json['duration_formated'];
    durationMinutes = json['duration_minutes'];
    stopTime = json['stop_time'];
    stopTimeMinutes = json['stop_time_minutes'];
    techstop = json['techstop'];
    ifs = json['ifs'] != null ? new Ifs.fromJson(json['ifs']) : null;
    delays = json['delays'];
    baggage = json['baggage'];
    serviceClass = json['service_class'];
    bookingClass = json['booking_class'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['operating_airline_code'] = this.operatingAirlineCode;
    data['operating_airline_name'] = this.operatingAirlineName;
    data['operating_airline_logo'] = this.operatingAirlineLogo;
    data['marketing_airline_code'] = this.marketingAirlineCode;
    data['marketing_airline_name'] = this.marketingAirlineName;
    data['marketing_airline_logo'] = this.marketingAirlineLogo;
    data['flight_number'] = this.flightNumber;
    data['flight_number_print'] = this.flightNumberPrint;
    data['airplane_code'] = this.airplaneCode;
    data['airplane_name'] = this.airplaneName;
    data['departure_country'] = this.departureCountry;
    data['departure_city'] = this.departureCity;
    data['departure_city_code'] = this.departureCityCode;
    if (this.routeLocales != null) {
      // data['route_locales'] = this.routeLocales.map((v) => v.toJson()).toList();
    }
    data['departure_airport'] = this.departureAirport;
    data['departure_terminal'] = this.departureTerminal;
    data['departure_date'] = this.departureDate;
    data['departure_local_time'] = this.departureLocalTime;
    data['departure_timezone'] = this.departureTimezone;
    data['departure_local_timestamp'] = this.departureLocalTimestamp;
    data['arrival_country'] = this.arrivalCountry;
    data['arrival_city'] = this.arrivalCity;
    data['arrival_city_code'] = this.arrivalCityCode;
    data['arrival_airport'] = this.arrivalAirport;
    data['arrival_terminal'] = this.arrivalTerminal;
    data['arrival_date'] = this.arrivalDate;
    data['arrival_local_time'] = this.arrivalLocalTime;
    data['arrival_timezone'] = this.arrivalTimezone;
    data['arrival_local_timestamp'] = this.arrivalLocalTimestamp;
    data['duration_formated'] = this.durationFormated;
    data['duration_minutes'] = this.durationMinutes;
    data['stop_time'] = this.stopTime;
    data['stop_time_minutes'] = this.stopTimeMinutes;
    data['techstop'] = this.techstop;
    if (this.ifs != null) {
      data['ifs'] = this.ifs.toJson();
    }
    data['delays'] = this.delays;
    data['baggage'] = this.baggage;
    data['service_class'] = this.serviceClass;
    data['booking_class'] = this.bookingClass;
    return data;
  }
}

class Ifs {
  String s12;
  String s20;
  String s18;

  Ifs({this.s12, this.s20, this.s18});

  Ifs.fromJson(Map<String, dynamic> json) {
    s12 = json['12'];
    s20 = json['20'];
    s18 = json['18'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['12'] = this.s12;
    data['20'] = this.s20;
    data['18'] = this.s18;
    return data;
  }
}

class PriceDetails {
  String type;
  String passengerType;
  int qty;
  String base;
  int baseAmount;
  String tax;
  int taxAmount;
  List<TaxDtl> taxDtl;
  String fee;
  int feeAmount;
  String single;
  int singleAmount;
  String total;
  int totalAmount;
  int baseTotal;
  int feeTotal;
  int taxTotal;

  PriceDetails(
      {this.type,
      this.passengerType,
      this.qty,
      this.base,
      this.baseAmount,
      this.tax,
      this.taxAmount,
      this.taxDtl,
      this.fee,
      this.feeAmount,
      this.single,
      this.singleAmount,
      this.total,
      this.totalAmount,
      this.baseTotal,
      this.feeTotal,
      this.taxTotal});

  PriceDetails.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    passengerType = json['passenger_type'];
    qty = json['qty'];
    base = json['base'];
    baseAmount = json['base_amount'];
    tax = json['tax'];
    taxAmount = json['tax_amount'];
    if (json['tax_dtl'] != null) {
      taxDtl = new List<TaxDtl>();
      json['tax_dtl'].forEach((v) {
        taxDtl.add(new TaxDtl.fromJson(v));
      });
    }
    fee = json['fee'];
    feeAmount = json['fee_amount'];
    single = json['single'];
    singleAmount = json['single_amount'];
    total = json['total'];
    totalAmount = json['total_amount'];
    baseTotal = json['base_total'];
    feeTotal = json['fee_total'];
    taxTotal = json['tax_total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['passenger_type'] = this.passengerType;
    data['qty'] = this.qty;
    data['base'] = this.base;
    data['base_amount'] = this.baseAmount;
    data['tax'] = this.tax;
    data['tax_amount'] = this.taxAmount;
    if (this.taxDtl != null) {
      data['tax_dtl'] = this.taxDtl.map((v) => v.toJson()).toList();
    }
    data['fee'] = this.fee;
    data['fee_amount'] = this.feeAmount;
    data['single'] = this.single;
    data['single_amount'] = this.singleAmount;
    data['total'] = this.total;
    data['total_amount'] = this.totalAmount;
    data['base_total'] = this.baseTotal;
    data['fee_total'] = this.feeTotal;
    data['tax_total'] = this.taxTotal;
    return data;
  }
}

class TaxDtl {
  String code;
  String amount;
  String currency;

  TaxDtl({this.code, this.amount, this.currency});

  TaxDtl.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    amount = json['amount'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['amount'] = this.amount;
    data['currency'] = this.currency;
    return data;
  }
}

class FareMessages {
  String pEN;
  bool nRF;
  String lTD;
  String sUR;

  FareMessages({this.pEN, this.nRF, this.lTD, this.sUR});

  FareMessages.fromJson(Map<String, dynamic> json) {
    pEN = json['PEN'];
    nRF = json['NRF'];
    lTD = json['LTD'];
    sUR = json['SUR'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['PEN'] = this.pEN;
    data['NRF'] = this.nRF;
    data['LTD'] = this.lTD;
    data['SUR'] = this.sUR;
    return data;
  }
}

class OwOffers {
  int lastOwVariant;

  OwOffers({this.lastOwVariant});

  OwOffers.fromJson(Map<String, dynamic> json) {
    lastOwVariant = json['last_ow_variant'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['last_ow_variant'] = this.lastOwVariant;
    return data;
  }
}
