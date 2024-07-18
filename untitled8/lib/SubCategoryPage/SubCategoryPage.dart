import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../controllers/categories_controller.dart';
import '../models/category_model.dart';

class SubCategoryPage extends StatelessWidget {
  final Category category;

  const SubCategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoryController = Get.find<CategoryController>();
    categoryController.fetchSubcategories(category.id);

    return Scaffold(
      appBar: AppBar(
        title: Text('${category.name} Subcategories'),
      ),
      body: GetBuilder<CategoryController>(
        builder: (controller) {
          if (controller.isLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (controller.subcategories.isEmpty) {
            return Center(child: Text('No subcategories found.'));
          }

          return ListView.builder(
            itemCount: controller.subcategories.length,
            itemBuilder: (context, index) {
              final subcategory = controller.subcategories[index];
              return ListTile(
                title: Text(subcategory.name),
                onTap: () {
                  // Handle subcategory tap
                },
              );
            },
          );
        },
      ),
    );
  }
}


