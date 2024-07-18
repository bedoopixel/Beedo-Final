import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/product_controller.dart';
import '../data/api/api_client.dart';
import '../data/repository/product_repo.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../utils/app_constants.dart';
class ProHcard extends StatelessWidget {
  final ProductController productController = Get.put(ProductController(
    productRepo: ProductRepo(
      apiClient: ApiClient(appBaseUrl: AppConstants.BASE_URL),
    ),
  ));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.9,
      height: MediaQuery.sizeOf(context).height*0.25,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
     child:  Obx(() {
      if (productController.isLoading.value) {
        return Center(child: CircularProgressIndicator());
      }
      return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.99,


        ),
        itemCount: productController.products.length,
        itemBuilder: (context, index) {
          var product = productController.products[index];
          return GestureDetector(
            onTap: () {
              // Show product details
            },
            child: Container(
              height:40,
              width: MediaQuery.sizeOf(context).width*0.30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Container(
                height:20,
                width: MediaQuery.sizeOf(context).width*0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(Icons.favorite_border_outlined, color: Color(0xFFD50066)),
                      ),
                      Padding(
                      padding: const EdgeInsets.only(bottom: 15, right: 2),
                      child: Container(
                      width: MediaQuery.sizeOf(context).width * 0.12,
                      height: MediaQuery.sizeOf(context).height * 0.02,
                      decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).accent1,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                      ),
                      child: Center(
                      child: Text(
                      "new",
                      style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      ),
                      ),
                      ),
                      ),
                      ),
                      ],
                    ),
                    Center(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width*0.20,
                        height: MediaQuery.sizeOf(context).height*0.10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.network(
                          product.photo[0],
                          fit: BoxFit.fitWidth,
                          width: double.infinity,

                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0,right: 8,bottom: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            product.productName,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Tajawal",
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            product.category.subCategory.name,
                            style:   TextStyle(
                              fontSize: 14,
                              fontFamily: "Tajawal",
                              color: Colors.black,
                              fontWeight: FontWeight.w200,
                            )
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            product.skus.first.price.toInt().toString()+" "+"YRE",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: FlutterFlowTheme.of(context)
                                  .accent1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }),
    );
  }
}