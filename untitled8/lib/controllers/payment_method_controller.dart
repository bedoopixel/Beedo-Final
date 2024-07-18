import 'package:get/get.dart';

import '../data/repository/payment_methods_repo.dart';
import '../models/payment_method_model.dart';


class PaymentMethodController extends GetxController {
  final PaymentMethodsRepo paymentMethodsRepo;

  PaymentMethodController({required this.paymentMethodsRepo});

  var isLoading = false.obs;
  var paymentMethods = <PaymentMethod>[].obs;

  @override
  void onInit() {
    fetchPaymentMethods();
    super.onInit();
  }

  Future<void> fetchPaymentMethods() async {
    try {
      isLoading(true);
      Response response = await paymentMethodsRepo.getPaymentMethods();

      if (response.statusCode == 200) {
        var jsonData = response.body as List;
        paymentMethods.value = jsonData.map((json) => PaymentMethod.fromJson(json)).toList();
      } else {
        Get.snackbar('Error', 'Failed to fetch payment methods');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch payment methods');
    } finally {
      isLoading(false);
    }
  }
}
