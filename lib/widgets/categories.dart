import 'package:figma/core/routenames.dart';
import 'package:figma/model/categories_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
    required this.categoriesModel,
  });
  final CategoriesModel categoriesModel;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(RouteNames.categoryItemScreen, arguments: widget.categoriesModel);
      },
      child: Container(
        width: 100,
        height: 10,
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.categoriesModel.imageUrl),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(widget.categoriesModel.category),
          ],
        ),
      ),
    );
  }
}
