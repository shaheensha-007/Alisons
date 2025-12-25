import 'dart:convert';
import 'dart:developer';

import 'package:alisons/services/Api_Servies.dart';
import 'package:http/http.dart' as http;

class HomeApi {
  ApiClient apiClient = ApiClient();

  Future<Map<String, dynamic>> getHomeData() async {
    try {
      // No need to pass ID or Token here!
      // ApiClient retrieves them from SharedPreferences automatically.
      http.Response response = await apiClient.invokeAPI('home/en', 'POST', {});

      return jsonDecode(response.body);
    } catch (e) {
      log("Home API Error: $e");
      rethrow;
    }
  }
}