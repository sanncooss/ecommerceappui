import 'package:figma/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({
    super.key,
    required this.shippingCost,
    required this.subtotal,
  });
  final double subtotal;
  final double shippingCost;

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
            child: SizedBox(
          width: double.infinity,
          height: 230,
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: greyish,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Shipping Address',
                                  style: GoogleFonts.roboto(
                                      fontSize: 14, color: blackGrey),
                                ),
                                Text(
                                  'Add Shipping Address',
                                  style: GoogleFonts.roboto(
                                      fontSize: 18, color: black),
                                )
                              ],
                            ),
                            const Icon(
                              IconsaxPlusBroken.arrow_right_3,
                              size: 26,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: greyish,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Payment Method',
                                  style: GoogleFonts.roboto(
                                      fontSize: 14, color: blackGrey),
                                ),
                                Text(
                                  'Add Payment Method',
                                  style: GoogleFonts.roboto(
                                      fontSize: 18, color: black),
                                )
                              ],
                            ),
                            const Icon(
                              IconsaxPlusBroken.arrow_right_3,
                              size: 26,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
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
                          '\$${widget.subtotal.toStringAsFixed(2)}',
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
                          '\$${widget.shippingCost.toStringAsFixed(2)}',
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
                          '\$${(widget.shippingCost + widget.subtotal).toStringAsFixed(2)}',
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
              child: InkWell(
                onTap: () {
                  // Navigator.of(context).push(
                  //   // MaterialPageRoute(
                  //   //   builder: (ctx) =>  
                  //   // ),
                  // )
                },
                child: Container(
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: purplish,
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Text('\$${(widget.shippingCost + widget.subtotal).toStringAsFixed(2)}',
                          style: GoogleFonts.bitter(
                            fontSize: 16,
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ],
                  )
                ),
              ),
            )
            ],
          ),
        )),
      ),
    );
  }
}
