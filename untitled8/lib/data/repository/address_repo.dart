import 'package:get/get.dart';
import '../../models/address_model.dart';
import '../../utils/app_constants.dart';
import '../api/api_client.dart';

class AddressRepo extends GetxService {
  final ApiClient apiClient;

  AddressRepo({required this.apiClient});

  Future<Response> addAddress(Address address) async {
    return await apiClient.postData(AppConstants.ADD_ADDRESS_URI, address.toJson());
  }

  Future<Response> updateAddress(Address address) async {
    return await apiClient.postData(AppConstants.UPDATE_ADDRESS_URI, address.toJson());
  }

  Future<Response> deleteAddress(int id, String token) async {
    return await apiClient.getData('${AppConstants.DELETE_ADDRESS_URI}/$id',);
  }

  Future<Response> getAddresses(String token) async {
    return await apiClient.getData(AppConstants.GET_ADDRESSES_URI);
  }
}
