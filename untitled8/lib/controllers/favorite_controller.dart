import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../data/repository/favorite_repo.dart';
import '../models/favorite_model.dart';


class FavoriteController extends GetxController {
  final FavoriteRepo favoriteRepo;
  final GetStorage storage = GetStorage();
  bool isLoading = false;

  FavoriteController({required this.favoriteRepo});

  Future<void> addToFavorite(FavoriteModel favoriteModel) async {
    try {
      isLoading = true;
      update();

      Response response = await favoriteRepo.addToFavorite(favoriteModel.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.snackbar('Success', 'Product added to favorites successfully');
      } else {
        Get.snackbar('Error', response.statusText ?? 'Failed to add to favorites');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to add to favorites');
    } finally {
      isLoading = false;
      update();
    }
  }

  Future<void> deleteFromFavorite(FavoriteModel favoriteModel) async {
    try {
      isLoading = true;
      update();

      Response response = await favoriteRepo.deleteFromFavorite(favoriteModel.toJson());

      if (response.statusCode == 200 || response.statusCode == 201) {
        Get.snackbar('Success', 'Product removed from favorites successfully');
      } else {
        Get.snackbar('Error', response.statusText ?? 'Failed to remove from favorites');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to remove from favorites');
    } finally {
      isLoading = false;
      update();
    }
  }
}
