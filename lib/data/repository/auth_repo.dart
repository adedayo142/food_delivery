import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/models/signup_body_model.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response> registration(SignUpBody signUpBody) async {
    return await apiClient.postData(
        AppConstants.registration_uri, signUpBody.toJson());
  }

  bool userLoggedIn() {
    return sharedPreferences.containsKey(AppConstants.token);
  }

  Future<String> getUserToken() async {
    return await sharedPreferences.getString(AppConstants.token) ?? "None";
  }

  Future<Response> login(String email, String password) async {
    return await apiClient.postData(
        AppConstants.login_uri, {"email": email, "password": password});
  }

  Future<bool> saveUserToken(String token) async {
    apiClient.token = token;
    apiClient.updateHeader(token);
    return await sharedPreferences.setString(AppConstants.token, token);
  }

  Future<void> saveUserNumberAndPassword(String number, String password) async {
    try {
      await sharedPreferences.setString(AppConstants.phone, number);
      await sharedPreferences.setString(AppConstants.password, password);
    } catch (e) {
      throw e;
    }
  }

  bool clearSharedData() {
    sharedPreferences.remove(AppConstants.token);
    sharedPreferences.remove(AppConstants.password);
    sharedPreferences.remove(AppConstants.phone);
    apiClient.token = '';
    apiClient.updateHeader('');
    return true;
  }
}
