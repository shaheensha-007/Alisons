import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiClient {
  static const String basePath = 'https://sungod.demospro2023.in.net/api/';

  // Save ID and Token after Login
  Future<void> saveAuthData(String id, String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('user_id', id);
    await prefs.setString('auth_token', token);
  }

  // Clear data on Logout or Invalid Token
  Future<void> clearAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  /// General API Invoker
  Future<http.Response> invokeAPI(String path, String method, Object? body) async {
    final prefs = await SharedPreferences.getInstance();
    final String id = prefs.getString('user_id') ?? '';
    final String token = prefs.getString('auth_token') ?? '';

    // Append id and token as URL parameters (Required by your API structure)
    String separator = path.contains('?') ? '&' : '?';
    String finalUrl = '$basePath$path${separator}id=$id&token=$token';

    Map<String, String> headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };

    log('Requesting: $finalUrl');
    http.Response response;

    try {
      if (method == 'POST') {
        response = await http.post(Uri.parse(finalUrl), headers: headers, body: jsonEncode(body));
      } else {
        response = await http.get(Uri.parse(finalUrl), headers: headers);
      }

      return _handleResponse(response);
    } catch (e) {
      rethrow;
    }
  }

  /// Handling errors like "Invalid Token" even if status is 200
  http.Response _handleResponse(http.Response response) {
    final body = jsonDecode(response.body);

    // Business Logic Error Handling (Success is null or message is Invalid Token)
    if (body['message'] == "Invalid Token" || body['success'] == null) {
      log('Auth Error: ${body['message']}');
      clearAuthData(); // Auto-clear bad session
      throw Exception(body['message'] ?? "Session Expired");
    }

    if (response.statusCode >= 400) {
      throw Exception("Server Error: ${response.statusCode}");
    }

    return response;
  }
}