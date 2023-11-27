import 'package:astrology_app/astropage/HomePage_astrologer/dashboard_screen.dart';
import 'package:astrology_app/astropage/splash/forgot/forgotpassword.dart';
import 'package:astrology_app/astropage/splash/login_screen.dart';
import 'package:astrology_app/astropage/splash/signup_page.dart';
import 'package:astrology_app/astropage/splash/splas_screen.dart';
import 'package:astrology_app/main.dart';
import 'package:get/get.dart';

class Routes {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String signUp = '/signUp';
  static const String signIn = '/signIn';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String profileEdit = '/profile-edit';
  static const String notification = '/notification';
  static const String chatScreen = '/chat-screen';
  static const String chatInbox = '/chat-inbox';
  static const String settingScreen = '/settingScreen';
  static const String myWallet = '/my-wallet';
  static const String tellusScreen = '/tellusScreen';
  static const String forgotPassword = "/forgotpassword";

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => const MyApp(),
    ),
    GetPage(
      name: splash,
      page: () => const SplassPage(),
    ),
    GetPage(
      name: signUp,
      page: () => const AstroSignScreen(),
    ),
    GetPage(
      name: signIn,
      page: () => const AstroLoginScreen(),
    ),
    GetPage(
      name: forgotPassword,
      page: () => const ForgotPassword(),
    ),
    GetPage(
      name: home,
      page: ()=> const AstroDashBoardPage(),
    ),
  ];
}
