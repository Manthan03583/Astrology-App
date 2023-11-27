import 'package:astrology_app/controller/snackbar_controller.dart';
import 'package:astrology_app/repository/auth_repository.dart';
import 'package:astrology_app/utils/routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;

class AuthController extends GetxController{
  
   final AuthRepo authRepo;

  AuthController({required this.authRepo});

  bool? _isLoading = false;
  final bool _acceptTerms = false;

  bool savedCookiesData = false;

  bool? get isLoading => _isLoading;
  bool get acceptTerms => _acceptTerms;

  
  var firstNController = TextEditingController();
  var lastNController = TextEditingController();
  var emailController= TextEditingController();
  var genderController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController= TextEditingController();
  var cntrycodeController = TextEditingController();
  var experienceController = TextEditingController();
  var cityController = TextEditingController();
  var countryController = TextEditingController();
  var systemknownController = TextEditingController();
  var selectlangController = TextEditingController();
  var shortbioController = TextEditingController();

  final snackbarController = Get.find<CustomSnackBarController>();

  @override
  void onClose() {
    super.onClose();
  }

  setAccessToken(String token) => authRepo.setAccessToken(token);
  setRefreshToken(String refreshToken) => authRepo.setRefreshToken(refreshToken);
  setIsLogin(bool isLogin) => authRepo.setIsLogin(isLogin);
  Future<bool> getIsLogin() => authRepo.getIsLogin();

  Future<void> login() async {
    _isLoading = true;
    update();
    Response? response = await authRepo.login(email: emailController.text, password: passwordController.text);
    if (response != null) {
      if (response.statusCode == 200) {
        _isLoading = false;
        update();
        snackbarController.showSnackbar(title: response.data["message"].toString(), message: '');
        Get.offAllNamed(Routes.home);
      } else {
        _isLoading = false;
        update();
        snackbarController.showSnackbar(title: 'Something Went Worng', message: '');
      }
    }
  }

  // Future<void> signUp() async {
  //   _isLoading = true;
  //   update();
  //   Response? response = await authRepo.(email: emailController.text, password: passwordController.text);
  //   if (response != null) {
  //     if (response.statusCode == 200) {
  //       _isLoading = false;
  //       update();
  //       snackbarController.showSnackbar(title: response.data["message"].toString(), message: '');
  //       Get.offAllNamed(Routes.home);
  //     } else {
  //       _isLoading = false;
  //       update();
  //       snackbarController.showSnackbar(title: 'Something Went Worng', message: '');
  //     }
  //   }
  // }
}