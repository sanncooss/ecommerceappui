import 'package:figma/lists/cart_products.dart';
import 'package:figma/model/items_model.dart';
import 'package:figma/screens/product/bag_page.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/widgets/backbutton.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.items});
  final Items items;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const BackButtonn(),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: greyish,
                      ),
                      child: Icon(
                        IconsaxPlusBroken.heart,
                        color: black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 160,
                          height: 210,
                          child: Image.asset(
                            'assets/broski.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '\$${widget.items.name}',
                  style: GoogleFonts.bitter(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$${widget.items.price}',
                  style: GoogleFonts.bitter(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: purplish),
                ),
                sizedBox,
                SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            Container(
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      sizedBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            ' ',
                                            style: GoogleFonts.roboto(
                                                fontSize: 22),
                                          ),
                                          Text(
                                            'Size',
                                            style: GoogleFonts.roboto(
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: const Icon(
                                              Icons.cancel_outlined,
                                              size: 28,
                                            ),
                                          )
                                        ],
                                      ),
                                      sizedBox,
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: purplish,
                                        ),
                                        height: 70,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'S',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: white),
                                              ),
                                              Icon(
                                                Icons.check,
                                                color: white,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: greyish,
                                        ),
                                        height: 70,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'M',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: greyish,
                                        ),
                                        height: 70,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'L',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: greyish,
                                        ),
                                        height: 70,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'XL',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: greyish,
                                        ),
                                        height: 70,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '2XL',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: greyish,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    'Size',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'S',
                                      style: GoogleFonts.bitter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(IconsaxPlusBroken.arrow_down_2)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.bottomSheet(
                            Container(
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      sizedBox,
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            ' ',
                                            style: GoogleFonts.roboto(
                                                fontSize: 22),
                                          ),
                                          Text(
                                            'Color',
                                            style: GoogleFonts.roboto(
                                              fontSize: 32,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: const Icon(
                                              Icons.cancel_outlined,
                                              size: 28,
                                            ),
                                          )
                                        ],
                                      ),
                                      sizedBox,
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: purplish,
                                        ),
                                        height: 70,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Orange',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: white),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 27,
                                                    height: 27,
                                                    decoration: BoxDecoration(
                                                        color: Colors.orange,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50),
                                                        border: Border
                                                            .fromBorderSide(
                                                                BorderSide(
                                                                    color:
                                                                        white,
                                                                    width: 3))),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Icon(
                                                    Icons.check,
                                                    color: white,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: greyish,
                                        ),
                                        height: 70,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Black',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: black),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 27,
                                                    height: 27,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      color: black,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Icon(
                                                    Icons.check,
                                                    color: greyish,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: greyish,
                                        ),
                                        height: 70,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Red',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: black),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 27,
                                                    height: 27,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Icon(
                                                    Icons.check,
                                                    color: greyish,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            30,
                                          ),
                                          color: greyish,
                                        ),
                                        height: 70,
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 18.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Yellow',
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: black),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 27,
                                                    height: 27,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      color: Colors.yellow,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 12,
                                                  ),
                                                  Icon(
                                                    Icons.check,
                                                    color: greyish,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: greyish,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    'Color',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 17,
                                      height: 17,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: blackGrey,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Icon(IconsaxPlusBroken.arrow_down_2)
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(45),
                            color: greyish,
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Text(
                                    'Quantity',
                                    style: GoogleFonts.roboto(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: purplish),
                                      child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            counter--;
                                          });
                                        },
                                        icon: Icon(
                                          IconsaxPlusBroken.minus,
                                          size: 30,
                                          color: white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text('$counter'),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: purplish),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              counter++;
                                            });
                                          },
                                          icon: Icon(
                                            IconsaxPlusBroken.add,
                                            size: 30,
                                            color: white,
                                          ),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      """
Built for life and made to last, this full-zip corduroy jacket is 
art of our Nike Life collection. The spacious fit gives you
plenty of room to layer underneath, while the soft corduroy
eeps it casual and timeless.
                        """,
                      style: GoogleFonts.roboto(
                        color: blackGrey,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Shipping & Returns',
                      style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Free standard shipping and free 60-day returns',
                      style: GoogleFonts.roboto(
                        color: blackGrey,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Reviews',
                      style: GoogleFonts.roboto(
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '4.5 Ratings',
                      style: GoogleFonts.roboto(
                        color: black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '213 Reviews',
                      style: GoogleFonts.roboto(
                        color: blackGrey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    child: Image.asset(
                                      width: 60,
                                      height: 60,
                                      'assets/profile.png',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Alex Morgan',
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                                width: 150,
                                child: Row(
                                  children: [
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                      color: purplish,
                                    ),
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                      color: purplish,
                                    ),
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                      color: purplish,
                                    ),
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                    ),
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            """
Gucci transcribes its heritage, creativity, and innovation into a
plenitude of collections. From staple items to distinctive 
accessories.
""",
                            style: GoogleFonts.roboto(
                              color: blackGrey,
                            ),
                          ),
                          Text(
                            '12 days',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    child: Image.asset(
                                      width: 60,
                                      height: 60,
                                      'assets/profile.png',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Alex Morgan',
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50,
                                width: 150,
                                child: Row(
                                  children: [
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                      color: purplish,
                                    ),
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                      color: purplish,
                                    ),
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                      color: purplish,
                                    ),
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                    ),
                                    Icon(
                                      IconsaxPlusBroken.star_1,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            """
Gucci transcribes its heritage, creativity, and innovation into a
plenitude of collections. From staple items to distinctive 
accessories.
""",
                            style: GoogleFonts.roboto(
                              color: blackGrey,
                            ),
                          ),
                          Text(
                            '12 days',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                sizedBox,
                sizedBox,
                GestureDetector(
                  onTap: () {
                    CartProducts.cartProducts.add(widget.items);
                    print('Added to favorites: ${widget.items.name}');
                    void printFavorites() {
                      for (var item in CartProducts.cartProducts) {
                        print(
                            'Name: ${item.name}, Price: ${item.price}, Image: ${item.image}');
                      }
                    } 
                    printFavorites();

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) =>
                            BagPage(items: CartProducts.cartProducts),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: purplish,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 18.0),
                            child: Text(
                              '\$${widget.items.price}',
                              style: GoogleFonts.roboto(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 18.0),
                            child: Text(
                              'Add to bag',
                              style: GoogleFonts.roboto(
                                  fontSize: 18, color: white),
                            ),
                          ),
                        ],
                      ),
                    ),
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
