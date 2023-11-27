import 'dart:core';

import 'package:astrology_app/components/constant.dart';
import 'package:astrology_app/services/api_client.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  final ApiClient apiClient;
  final SharedPreferences sharedPreferences;
  AuthRepo({required this.apiClient, required this.sharedPreferences});

  Future<Response?> login(
      {required String email, required String password}) async {
    return await apiClient.postData(
        AppConstants.loginUri, {"email": email, "password": password});
  }

  Future<Response?> signUp({required String firstName,})async{

  }

  void setAccessToken(String token) async {
    apiClient.setAccessToken(token);
  }

  void setRefreshToken(String token) async {
    apiClient.setRefreshToken(token);
  }

  void setIsLogin(bool ans) {
    sharedPreferences.setBool(AppConstants.isLogin, ans);
  }

  Future<bool> getIsLogin() async {
    return sharedPreferences.getBool(AppConstants.isLogin) ?? false;
  }
}
