import 'package:figma/model/orders_model.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/widgets/backbutton.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    OrdersModel ordersModel = Get.arguments as OrdersModel;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BackButtonn(),
                  Padding(
                    padding: const EdgeInsets.only(left: 80.0),
                    child: Text(
                      'Order #${ordersModel.orderId}',
                      style: GoogleFonts.gabarito(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 330,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/greycircle.png',
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Delivered',
                              style: GoogleFonts.bitter(
                                fontSize: 18,
                                color: Color.fromARGB(255, 199, 199, 199),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '28 May',
                          style: GoogleFonts.bitter(
                            color: Color.fromARGB(255, 199, 199, 199),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/purplecircle.png',
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Shipped',
                              style: GoogleFonts.bitter(
                                color: black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '28 May',
                          style: GoogleFonts.bitter(color: black),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/purplecircle.png',
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Order confirmed',
                              style: GoogleFonts.bitter(
                                color: black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '28 May',
                          style: GoogleFonts.bitter(color: black),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/purplecircle.png',
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Order Placed',
                              style: GoogleFonts.bitter(
                                color: black,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '28 May',
                          style: GoogleFonts.bitter(color: black),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                'Order items',
                style: GoogleFonts.gabarito(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                color: greyish,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Icon(
                            IconsaxPlusBroken.receipt_1,
                            size: 24,
                            color: black,
                          ),
                        ),
                       Text(
                          ordersModel.itemQuantity > 1
                              ? '${ordersModel.itemQuantity} items'
                              : '${ordersModel.itemQuantity} item',
                          style: GoogleFonts.bitter(color: black, fontSize: 16),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'View all',
                        style: GoogleFonts.bitter(
                            color: purplish,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
              sizedBox,
              Text(
                'Shipping details',
                style: GoogleFonts.gabarito(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                color: greyish,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ordersModel.address,
                          style: GoogleFonts.bitter(fontSize: 14),
                        ),
                        Text(
                          ordersModel.phoneNumber,
                          style: GoogleFonts.bitter(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
