// import 'dart:convert';
// import 'package:astrology_app/components/constant.dart';
// import 'package:http/http.dart' as http;
// // import 'package:shared_preferences/shared_preferences.dart';

// class Service {
//   static Future<dynamic> astroLogin(String email, String password) async {
//     const apiUrl = "/astrologer/sign-in";

//     final Map<String, String> headers = {
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//     };

//     var body = json.encode({
//       'email': email,
//       'password': password,
//     });

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.post(uri, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception('Login Failed');
//     }
//   }

//   static Future<List<dynamic>> getShortcutOfUser() async {
//     const apiUrl = "/astrologer/shortcuts";
//     final Map<String, String> headers = {
//       'Authorization': 'Bearer ${AppConstants.getToken()}',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//     };

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.get(uri, headers: headers);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception('Failed to fetch shortcut data');
//     }
//   }

//   static Future<String> createLeave(
//       String fromDate, String toDate, String reason) async {
//     const apiUrl = "/astrologer/createLeave";
//     final Map<String, String> headers = {
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY4ODk3MDM4MSwiZXhwIjoxNjg5MTQzMTgxfQ.4TDvBprJUnfqbWzpjv9HM9E0psbc-ys9U511rP4V9vw',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//     };

//     var body = json.encode({
//       "astrologerId": 105,
//       "startDate": fromDate,
//       "endDate": toDate,
//       "reason": reason,
//     });

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.post(uri, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse['message'].toString();
//     } else {
//       throw Exception('Failed to create leave');
//     }
//   }

//   static Future<dynamic> fetchProfileData() async {
//     const apiUrl = "/astrologer/profile";

//     final Map<String, String> headers = {
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY4ODk3MDM4MSwiZXhwIjoxNjg5MTQzMTgxfQ.4TDvBprJUnfqbWzpjv9HM9E0psbc-ys9U511rP4V9vw',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//       'Connection': 'keep-alive',
//     };

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.get(uri, headers: headers);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception('Failed to fetch profile data');
//     }
//   }

//   static Future<dynamic> updateLoginHour(
//       String fromdate, String endDate) async {
//     const apiUrl = '/astrologer/loginhours';

//     final Map<String, String> headers = {
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY4OTMxNTU5MSwiZXhwIjoxNjg5NDg4MzkxfQ.ZOhJc0XCF0tUsons7zsB1u4dFdpD4rBA_ikmh_NCDCw',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//       'Connection': 'keep-alive',
//     };

//     var body = json.encode({
//       "astrologerId": 50,
//       "fromDate": fromdate,
//       "endDate": endDate,
//     });

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.post(uri, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception("Login hours insertion failed");
//     }
//   }

//   static Future<dynamic> getTotalLoginHour() async {
//     const apiUrl = '/astrologer/getloginhours';

//     final Map<String, String> headers = {
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY4OTIyMzgxNywiZXhwIjoxNjg5Mzk2NjE3fQ.B9Pph-y7zM7R_AA6vFI2gcWL7P5WRqEKjSyx4U-fUjQ',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//       'Connection': 'keep-alive',
//     };

//     var body = json.encode({
//       "astrologerId": 58,
//     });

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.post(uri, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception("fetching Total login hours failed");
//     }
//   }

//   static Future<dynamic> getLoginHourSummary() async {
//    const apiUrl = '/get-login-hours';
//   }

//   static Future<dynamic> getEarning() async {
//     const apiUrl = '/astrologer/affleate';

//     final Map<String, String> headers = {
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY4OTIyMzgxNywiZXhwIjoxNjg5Mzk2NjE3fQ.B9Pph-y7zM7R_AA6vFI2gcWL7P5WRqEKjSyx4U-fUjQ',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//       'Connection': 'keep-alive',
//     };

//     var body = json.encode({
//       "astrologer_id": 56,
//       "total_earnings": 5000,
//       "varta_earnings": 1000,
//       "total_affiliate_earnings": 500,
//       "report_affiliate_earnings": 200,
//       "service_earnings": 800
//     });

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.post(uri, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception("Failed to get load Earning");
//     }
//   }

//   static Future<dynamic> submitArticle(String title, String description) async {
//     const apiUrl = "/astrologer/submit";

//     final Map<String, String> headers = {
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY5MDI2NzAyMCwiZXhwIjoxNjkxOTk1MDIwfQ.nxjd8YIJlgwi_EMu44x2ZMuELgol-L-LVSl5E-KQc9U',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//       'Connection': 'keep-alive',
//     };

//     var body = json.encode({"title": title, "description": description});

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.post(uri, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception("Failed to Submit Article");
//     }
//   }

//   static Future<dynamic> saveasDraftArticle(
//       String title, String description) async {
//     const apiUrl = "/astrologer/save-draft";

//     final Map<String, String> headers = {
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY5MDI2NzAyMCwiZXhwIjoxNjkxOTk1MDIwfQ.nxjd8YIJlgwi_EMu44x2ZMuELgol-L-LVSl5E-KQc9U',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//       'Connection': 'keep-alive',
//     };

//     var body = json.encode({"title": title, "description": description});

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.post(uri, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception("Failed to save Article as draft");
//     }
//   }

//   static Future<dynamic> deleteDraftArticle(String id) async {
//     const apiUrl = "/astrologer/delete-draft";

//     final Map<String, String> headers = {
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY5MDI2OTQzMSwiZXhwIjoxNjkxOTk3NDMxfQ.6t8V2ugjV7u8qQvNYOTF7ekf7Vx55InuYLDGX51uwVY',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//       'Connection': 'keep-alive',
//     };

//     var body = json.encode({"id": id});

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.post(uri, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception("Failed to delete article as draft");
//     }
//   }

//   static Future<dynamic> updateDraft(
//       String id, String title, String description) async {
//     const apiUrl = "/astrologer/update-draft";

//     final Map<String, String> headers = {
//       'Authorization':
//           'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InJhbWVzMzI0QGdtYWlsLmNvbSIsImlkIjoxMDUsImlhdCI6MTY5MDI2OTQzMSwiZXhwIjoxNjkxOTk3NDMxfQ.6t8V2ugjV7u8qQvNYOTF7ekf7Vx55InuYLDGX51uwVY',
//       'Content-Type': 'application/json',
//       'Accept': '*/*',
//       'Connection': 'keep-alive',
//     };

//     var body = json.encode({
//       "title": title,
//       "description": description,
//       "id": id
//     });

//     final uri = Uri.https(AppConstants.baseUrl, apiUrl);
//     final response = await http.post(uri, headers: headers, body: body);

//     if (response.statusCode == 200) {
//       final jsonResponse = json.decode(response.body);
//       return jsonResponse;
//     } else {
//       throw Exception("Failed to update article as draft");
//     }
//   }
// }
