import 'package:get/get.dart';
import '../../utils/app_constants.dart';
import '../api/api_client.dart';


class LoginRepo extends GetxService {
  final ApiClient apiClient;

  LoginRepo({required this.apiClient});

  Future<Response> login(Map<String, dynamic> data) async {
    return await apiClient.postData(AppConstants.LOGIN_URI, data);
  }
}
