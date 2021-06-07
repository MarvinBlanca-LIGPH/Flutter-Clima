import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as Http;
import 'dart:convert';

class NetworkHelper {
  final String url;

  NetworkHelper({@required this.url});

  Future getData() async {
    Http.Response response = await Http.get(url);
    print(response.request);
    if (response.statusCode == 200) {
      String data = response.body;

      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
