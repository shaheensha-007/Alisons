import 'package:shared_preferences/shared_preferences.dart';

class PreferenceManager {
  static const String keyToken = "auth_token";
  static const String keyUserId = "user_id";

  // Save data after login
  Future<void> saveUserData(String token, String id) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(keyToken, token);
    await prefs.setString(keyUserId, id);
  }

  // Get token for API calls
  Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(keyToken);
  }

  // Clear data on logout
  Future<void> clearData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}