import 'package:astrology_app/components/constant.dart';
import 'package:astrology_app/services/api_client.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApplyLeaveRepo {
  final ApiClient apiClient;

  ApplyLeaveRepo({required this.apiClient});

  Future<Response?> createLeave(
      {required String fromDate,
      required String toDate,
      required String reason}) async {
    return await apiClient.postData(AppConstants.leaveUri,
        {"from_date": fromDate, "to_date": toDate, "reason": reason});
  }
}
