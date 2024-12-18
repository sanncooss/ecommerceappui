import 'dart:async';

import 'package:figma/model/items_model.dart';
import 'package:figma/screens/product/checkout_page.dart';
import 'package:figma/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class BagPage extends StatefulWidget {
  final List<Items> items;

  const BagPage({super.key, required this.items});

  @override
  State<BagPage> createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  double calculateTotalPrice() {
    return widget.items.fold(0.0, (sum, item) => sum + item.price);
  }

  double shippingPrice() {
    return widget.items.fold(0.0, (sum, item) => sum + 2);
  }

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cart')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    'Remove all',
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: black,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                height: 285,
                child: ListView.builder(
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    final item = widget.items[index];
                    return Card(
                      color: greyish,
                      child: Container(
                        width: double.infinity,
                        height: 90,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/hoodies.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  item.name,
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'Size',
                                          style: GoogleFonts.bitter(
                                            color: blackGrey,
                                          ),
                                        ),
                                        Text('- M',
                                            style: GoogleFonts.bitter(
                                                color: black,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 25,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Color',
                                          style: GoogleFonts.bitter(
                                            color: blackGrey,
                                          ),
                                        ),
                                        Text('- Lemon',
                                            style: GoogleFonts.bitter(
                                                color: black,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 90,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const SizedBox(
                                  width: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('\$${item.price}',
                                      style: GoogleFonts.bitter(
                                        color: black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                                Row(
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
                                    counter > 0 ? Text('$counter') : Text(''),
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
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: GoogleFonts.bitter(
                          color: blackGrey,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$${calculateTotalPrice().toStringAsFixed(2)}',
                        style: GoogleFonts.bitter(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping Cost',
                        style: GoogleFonts.bitter(
                          color: blackGrey,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$${shippingPrice().toStringAsFixed(2)}',
                        style: GoogleFonts.bitter(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tax',
                        style: GoogleFonts.bitter(
                          color: blackGrey,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$0',
                        style: GoogleFonts.bitter(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: GoogleFonts.bitter(
                          color: blackGrey,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '\$${(shippingPrice() + calculateTotalPrice()).toStringAsFixed(2)}',
                        style: GoogleFonts.bitter(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 75,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              IconsaxPlusBroken.discount_shape,
                              color: Colors.green,
                              size: 26,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Enter Coupon Code',
                              style: GoogleFonts.roboto(
                                  fontSize: 14, color: blackGrey),
                            )
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: purplish, shape: BoxShape.circle),
                          child: Icon(
                            IconsaxPlusBroken.arrow_right_3,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => CheckoutPage(
                        shippingCost: shippingPrice(),
                        subtotal: calculateTotalPrice(),
                      ),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: purplish,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Checkout',
                    style: GoogleFonts.roboto(fontSize: 18, color: white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
