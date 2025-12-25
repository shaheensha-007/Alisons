import 'dart:convert';

import 'package:alisons/Model/LoginModel.dart';
import 'package:alisons/Widgets/PreferenceManager.dart';
import 'package:alisons/services/Api_Servies.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  ApiClient apiClient = ApiClient();
  PreferenceManager prefManager = PreferenceManager();

  Future<LoginModel> postuserdata(String email, String password) async {
    // Note: If your API expects form-data, remove jsonEncode in ApiClient
    var body = {'email_phone': email, 'password': password};

    try {
      // 1. Call Login
      http.Response response = await apiClient.invokeAPI('login', 'POST', body);
      LoginModel model = LoginModel.fromJson(jsonDecode(response.body));

      // 2. Save to SharedPreferences if success
      if (model.success == 1 && model.customerdata != null) {
        await prefManager.saveUserData(
            model.customerdata!.token!,
            model.customerdata!.id!
        );
      }
      return model;
    } catch (e) {
      rethrow;
    }
  }
}