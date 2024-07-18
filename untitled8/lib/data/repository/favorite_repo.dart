import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class FavoriteRepo extends GetxService {
  final ApiClient apiClient;

  FavoriteRepo({required this.apiClient});

  Future<Response> addToFavorite(Map<String, dynamic> data) async {
    return await apiClient.postData(AppConstants.ADD_TO_FAVORITE_URI, data);
  }

  Future<Response> deleteFromFavorite(Map<String, dynamic> data) async {
    return await apiClient.postData(AppConstants.DELETE_FROM_FAVORITE_URI, data);
  }
}
