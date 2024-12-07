import 'package:figma/lists/items.dart';
import 'package:figma/model/categories_model.dart';
import 'package:figma/widgets/backbutton.dart';
import 'package:figma/widgets/item.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    final CategoriesModel? categoriesModel = Get.arguments as CategoriesModel;
    bool isEmpty = false;

    if (categoriesModel != null) {
      isEmpty = true;
    }



    return isEmpty
        ? SafeArea(
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sizedBox,
                    const BackButtonn(),
                    sizedBox,
                    Text(
                      categoriesModel!.category,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: ItemsList.items.length,
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 30,
                          crossAxisSpacing: 30,
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Item(items: ItemsList.items[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : const BackButtonn();
  }
}
