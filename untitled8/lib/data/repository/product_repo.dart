import 'package:get/get.dart';

import '../../utils/app_constants.dart';
import '../api/api_client.dart';


class ProductRepo extends GetxService {
  final ApiClient apiClient;

  ProductRepo({required this.apiClient});

  Future<Response> getProducts() async {
    return await apiClient.getData(AppConstants.GET_PRODUCTS_URI);
  }

  Future<Response> getProductById(String id) async{
    return await apiClient.postData(AppConstants.GET_PRODUCTS_BY_ID_URI, id);
  }

  Future<Response> getProductByCategoryId(String categoryId) async{
      return await apiClient.postData(AppConstants.GET_PRODUCTS_BY_CATEGORYID_URI, categoryId);
    }


  Future<Response> getProductBySubcategoryId(String categoryId,String subId) async{
    List<String> body=[categoryId,subId];
    return await apiClient.postData(AppConstants.GET_PRODUCTS_BY_ID_URI, body);
  }
}
