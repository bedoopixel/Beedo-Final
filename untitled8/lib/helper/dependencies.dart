import 'package:get/get.dart';
import '../controllers/categories_controller.dart';
import '../controllers/login_controller.dart';
import '../controllers/payment_method_controller.dart';
import '../controllers/signup_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/categories_repo.dart';
import '../data/repository/login_repo.dart';
import '../data/repository/payment_methods_repo.dart';
import '../data/repository/signup_repo.dart';
import '../utils/app_constants.dart';

Future<void> init()async{
  //api client
  Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repo
  Get.lazyPut(() =>PaymentMethodsRepo(apiClient: Get.find()));
  Get.lazyPut(() =>CategoryRepo(apiClient: Get.find()));
  Get.lazyPut(() =>LoginRepo(apiClient: Get.find()));
  Get.lazyPut(() =>SignupRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PaymentMethodController(paymentMethodsRepo: Get.find()));
  Get.lazyPut(() => CategoryController(categoryRepo: Get.find()));
  Get.lazyPut(() => LoginController(loginRepo: Get.find()));
  Get.lazyPut(() => SignupController(signupRepo: Get.find()));

}