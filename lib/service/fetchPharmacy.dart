import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchPharmacy() async {
  final response = await http.get('http://api.kodlama.net/eczane/il/22');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.

    return jsonDecode(response.body)["data"];
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
