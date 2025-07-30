import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:new_app_online_workshop/models/apod_model.dart';

class ApodServices {
  Future<List<ApodModel>> fetchApods() async {
    final response = await http.get(
      Uri.parse(
        "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&start_date=2025-01-01&end_date=2025-01-08",
      ),
    );

    // Prints for debugging 
    // print("response : ${response.statusCode}");
    // print("response body : ${response.body}");

    if (response.statusCode == HttpStatus.ok) {
      final List<dynamic> json = jsonDecode(response.body);
      return json.map((j) => ApodModel.fromJson(j)).toList();

      // return ApodModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Error while loading data from nasa api.");
    }
  }
}
