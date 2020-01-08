import 'dart:convert';

import 'package:http/http.dart';

class HttpModel {
  static String comment;
  final perspectiveApiUrl =
      "https://commentanalyzer.googleapis.com/v1alpha1/comments:analyze";
  final apiKey = "YOUR API KEY";
  var headers = {'Content-Type': 'application/json'};
  var data = json.encode(
    {
      "comment": {
        "text": comment,
      },
      "languages": ["en"],
      "requestedAttributes": {"TOXICITY": {}, "UNSUBSTANTIAL": {}},
    },
  );
  Future<Response> getToxicity() async {
    Response res = await post(
      perspectiveApiUrl + "?key=" + apiKey,
      body: data,
      headers: headers,
    );
    return res;
  }
}
