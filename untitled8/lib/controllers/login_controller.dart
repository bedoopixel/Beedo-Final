import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled2/LoginScreenWidget/Login_Done/Login_Done.dart';
import '../data/repository/login_repo.dart';
import '../models/login_model.dart';



class LoginController extends GetxController {
  final LoginRepo loginRepo;
  final GetStorage storage = GetStorage();
  bool isLoading = false;

  LoginController({required this.loginRepo});

  Future<void> login(LoginModel loginModel) async {
    try {
      isLoading = true;
      update();

      Response response = await loginRepo.login(loginModel.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        String token = response.body['access_token'];
        await storage.write('token', token);
        Get.to(()=> LoginDoneWidget());
      } else {
        Get.snackbar('NO pass', response.statusText ?? 'Login failed');
      }
    } catch (e) {
      Get.snackbar('No user', 'Login failed');
    } finally {
      isLoading = false;
      update();
    }
  }
}
