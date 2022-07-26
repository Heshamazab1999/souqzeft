import 'package:flutter_sixvalley_ecommerce/data/http/api.dart';

Future<List> getCity() async {
  String url = 'https://souqadam.com/api/v1/cities';

  Map dataReturned = await API()
      .getRequest(url: url, headers: {"Content-Type": "application/json"});
  List jsonCities = dataReturned['data'];

  List<String> cities = [];

  for (int i = 0; i < jsonCities.length; i++) {
    cities.add(jsonCities[i]['name']);
  }

  print(cities.toString());
  return cities;
}
