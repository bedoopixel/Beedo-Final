import 'package:get/get.dart';

import '../data/repository/product_repo.dart';
import '../models/product_model.dart';


class ProductController extends GetxController {
  final ProductRepo productRepo;

  ProductController({required this.productRepo});

  var isLoading = false.obs;
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }

  Future<void> getProducts() async {
    try {
      isLoading.value = true;
      Response response = await productRepo.getProducts();
      if (response.statusCode == 200) {
        var productsJson = response.body as List;
        products.value = productsJson.map((json) => Product.fromJson(json)).toList();
      } else {
        Get.snackbar('Error', response.statusText ?? 'Failed to get products!!!!!!');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to get products....');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getProductById(String id) async{
    try {
      isLoading.value = true;
      Response response = await productRepo.getProductByCategoryId(id);
      if (response.statusCode == 200) {
        if(response.body != null){
          var productsJson = response.body as List;
          products.value = productsJson.map((json) => Product.fromJson(json)).toList();
        }else{
          Get.snackbar('Error', 'لم يتم العثور على هذا المنتج');
        }

      } else {
        Get.snackbar('Error', response.statusText ?? 'Failed to get products!!!!!!');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to get products....');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getProductByCategoryId(String categoryId) async{
    try {
      isLoading.value = true;
      Response response = await productRepo.getProductByCategoryId(categoryId);
      if (response.statusCode == 200) {
        if(response.body != null){
          var productsJson = response.body as List;
          products.value = productsJson.map((json) => Product.fromJson(json)).toList();
        }else{
          Get.snackbar('Error', 'لا توجد منتجات في هذه الفئة');
        }

      } else {
        Get.snackbar('Error', response.statusText ?? 'Failed to get products!!!!!!');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to get products....');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> getProductBySubcategoryId(String categoryId,String subId) async{
    try {
      isLoading.value = true;
      Response response = await productRepo.getProductBySubcategoryId(categoryId,subId);
      if (response.statusCode == 200) {
        if(response.body != null){
          var productsJson = response.body as List;
          products.value = productsJson.map((json) => Product.fromJson(json)).toList();
        }else{
          Get.snackbar('Error', 'لا توجد منتجات في هذه الفئة');
        }

      } else {
        Get.snackbar('Error', response.statusText ?? 'Failed to get products!!!!!!');
      }
    } catch (e) {
      Get.snackbar('Error', 'Failed to get products....');
    } finally {
      isLoading.value = false;
    }
  }

}
