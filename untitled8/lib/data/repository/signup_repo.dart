import 'package:get/get.dart';
import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class SignupRepo extends GetxService {
  final ApiClient apiClient;

  SignupRepo({required this.apiClient});

  Future<Response> signup(Map<String, dynamic> data) async {
    return await apiClient.postData(AppConstants.SIGNUP_URI, data);
  }
}
