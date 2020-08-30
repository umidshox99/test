import 'dart:convert';

import 'package:http/http.dart';
import 'package:testapp/model.dart';

class APIProvider {
  Future<OffersData> getTrendsPhotos() async {
    OffersData _data = OffersData();
    var response = await get(
      "http://etmmock.thinkland.uz/etm_response_short.json",
    );
    if (response.statusCode == 200) {
      _data = OffersData.fromJson(jsonDecode(response.body));
      print(_data.offers.length.toString() + "Umid");
    } else {
      print("Error Umid");
    }
    return _data;
  }
}
