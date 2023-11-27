class AppConstants {

  //Urls
  static const baseUrl = "https://astrology.f2fdigital.in";
  static const loginUri = "/astrologer/login";
  static const signupUri = "/astrologer/signup";
  static const refreshUri = "/astrologer/refresh";
  static const astrologerProfileUri = "/astrologer/profile";
  static const leaveUri = "/astrologer/leave";
  static const shortcutUri = "/astrologer/shortcut";
  static const blogUri = "/astrologer/blog";


  //Keys
  static const String accessToken = "accesstoken";
  static const String  refreshToken  = "refreshtoken";
  static const String  isSplashScreen = "splashscreen";
  static const String  isLogin = "isLogin";
  

  static Map<String, dynamic> configheader = {
    'Content-Type': 'application/json',
    'Accept': '*/*',
    'Connection': 'keep-alive'
  };
  
}