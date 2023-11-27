// import 'package:astrology_app/model/login_model.dart';
// import 'package:astrology_app/model/shortcut_model.dart';
// import 'package:astrology_app/services/services.dart';

// class Controller {
//   List<Shortcut> shortcutList = [];

//   static Future<LoginModel> login(String email, String password) async {
//     try {
//       final loginData = await Service.astroLogin(email, password);
//       return LoginModel(
//           message: loginData['message'], token: loginData["token"]);
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   Future<List<Shortcut>> getShortcutData() async {
//     try {
//       final shortcutData = await Service.getShortcutOfUser();
//       return shortcutList = shortcutData.map((data) {
//         return Shortcut(
//           shortcut: data['shortcut'] ?? '',
//           message: data['message'] ?? '',
//         );
//       }).toList();
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   static Future<String> createLeaveData(
//       String fromDate, String toDate, String reason) async {
//     try {
//       final createLeave = await Service.createLeave(fromDate, toDate, reason);
//       return createLeave;
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   static Future<Map<String, dynamic>> fetchProfile() async {
//     try {
//       final profileData = await Service.fetchProfileData();
//       print(profileData['message']);
//       var dataList = profileData['astrologer'];
//       return dataList[0];
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   static Future<String> loginHour(String fromdate, String endDate) async {
//     try {
//       final loginHourData = await Service.updateLoginHour(fromdate, endDate);
//       print(loginHourData['message']);
//       return loginHourData['message'];
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   static Future<String> getTotalLoginHour() async {
//     try {
//       final totalLoginHour = await Service.getTotalLoginHour();
//       return totalLoginHour["total login hours"].toString();
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   static Future<dynamic> getEarning() async {
//     try {
//       final earningData = await Service.getEarning();
//       print(earningData);
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   static Future<Map<String, dynamic>> submitArticle(
//       String title, String description) async {
//     try {
//       final data = await Service.submitArticle(title, description);
//       return data;
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   static Future<Map<String, dynamic>> saveAsDraftArticle(
//       String title, String description) async {
//     try {
//       final data = await Service.saveasDraftArticle(title, description);
//       return data;
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   static Future<Map<String, dynamic>> deleteDraftArticle(String id) async {
//     try {
//       final data = await Service.deleteDraftArticle(id);
//       return data;
//     } catch (e) {
//       throw Exception(e);
//     }
//   }

//   static Future<Map<String, dynamic>> updateDraftArticle(
//       String id, String title, String description) async {
//     try {
//       final data = await Service.updateDraft(id, title, description);
//       return data;
//     } catch (e) {
//       throw Exception(e);
//     }
//   }
// }
