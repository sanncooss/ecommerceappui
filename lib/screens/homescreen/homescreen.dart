import 'dart:convert';
import 'package:figma/core/routenames.dart';
import 'package:figma/lists/categories.dart';
import 'package:figma/lists/items.dart';
import 'package:figma/model/items_model.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/utils/getx_storage.dart';
import 'package:figma/widgets/categories.dart';
import 'package:figma/widgets/item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icon_icons/icon_icons.dart';
import 'package:http/http.dart' as https;
import 'package:iconsax_plus/iconsax_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String unsplashApiUrl = 'https://api.unsplash.com/photos/random';
  final String unsplashApiKey = 'Ksa2nSy-z839BEMQt0bGFxjeUBw0-uEwuz5olsoXbqA';

  bool isLoading = true;
  Future<void> fetchRandomPhotos() async {
    try {
      final response = await https.get(
        Uri.parse(
            '$unsplashApiUrl?client_id=$unsplashApiKey&count=${ItemsList.items.length}'),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data != null && data.isNotEmpty) {
          for (int i = 0; i < ItemsList.items.length; i++) {
            final photoUrl = data[i]['urls']?['small'];

            if (photoUrl != null) {
              setState(() {
                ItemsList.items[i] = Items(
                  name: ItemsList.items[i].name,
                  price: ItemsList.items[i].price,
                  image: photoUrl,
                );
              });
            } else {
              print('no image URL found for ${ItemsList.items[i].name}');
            }
          }
        }
      } else {
        print('error fetching photos: ${response.statusCode}');
      }
    } catch (e) {
      print('error fetching photos: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchRandomPhotos();
  }

  @override
  Widget build(BuildContext context) {
    StorageService storage = StorageService();
    String username = storage.read('username') ?? 'no user registered';

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconIcons.basketball(),
          title: GestureDetector(
            onTap: () {
              Get.bottomSheet(
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text('Men'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      ListTile(
                        title: Text('Women'),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(255, 223, 223, 223),
              ),
              width: 90,
              height: 47,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Select',
                    style: GoogleFonts.bitter(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    IconsaxPlusBroken.arrow_down_2,
                    color: black,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/shop.png',
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: TextField(
                      controller: TextEditingController(),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        prefixIcon: IconButton(
                            onPressed: () {
                              Get.toNamed(RouteNames.shopby);
                            },
                            icon:
                                const Icon(IconsaxPlusBroken.search_normal_1)),
                        filled: true,
                        fillColor: grey,
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: GoogleFonts.gabarito(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteNames.categoriesScreen)!;
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          'See all',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Category.list.length,
                    itemBuilder: (context, index) {
                      return Categories(categoriesModel: Category.list[index]);
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top selling',
                      style: GoogleFonts.gabarito(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Text(
                          'See all',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 300,
                  child: isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : ItemsList.items.isEmpty
                          ? Center(
                              child: Text('No items available'),
                            )
                          : ListView.builder(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.all(10),
                              itemCount: ItemsList.items.length,
                              itemBuilder: (context, index) {
                                return Item(items: ItemsList.items[index]);
                              },
                            ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New in',
                        style: GoogleFonts.gabarito(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: purplish)),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Text(
                        'See all',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                GridView.builder(
                  itemCount: ItemsList.items.length,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      // mainAxisSpacing: 10,
                      // crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: 0.70),
                  itemBuilder: (context, index) {
                    return Item(items: ItemsList.items[index]);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
