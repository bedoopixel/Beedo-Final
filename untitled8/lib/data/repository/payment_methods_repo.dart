
import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class PaymentMethodsRepo extends GetxService {
  final ApiClient apiClient;

  PaymentMethodsRepo({required this.apiClient});

  Future<Response> getPaymentMethods() async {
    return await apiClient.getData(AppConstants.PAYMENT_METHODS_URI);
  }
}
