import 'package:figma/core/routenames.dart';
import 'package:figma/lists/categories.dart';
import 'package:figma/widgets/backbutton.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBox,
                const BackButtonn(),
                sizedBox,
                Text(
                  'Shop by categories',
                  style: GoogleFonts.bitter(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: Category.list.length,
                    itemBuilder: (ctx, i) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed(
                              RouteNames.categoryItemScreen,
                              arguments: Category.list[i],
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(255, 225, 225, 225),
                            ),
                            width: double.infinity,
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(width: 20),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(60),
                                  child: Image.asset(Category.list[i].imageUrl),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  Category.list[i].category,
                                  style: GoogleFonts.bitter(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
