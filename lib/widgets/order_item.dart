import 'package:figma/core/routenames.dart';
import 'package:figma/model/orders_model.dart';
import 'package:figma/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
class OrderItem extends StatelessWidget {
  const OrderItem({super.key, required this.ordersModel});
  final OrdersModel ordersModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          RouteNames.orderDetails,
          arguments: ordersModel,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: greyish,
            borderRadius: BorderRadius.circular(20),
          ),
          width: double.infinity,
          height: 72,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Icon(
                  IconsaxPlusBroken.receipt_1,
                  size: 24,
                  color: black,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order #${ordersModel.orderId}',
                          style: GoogleFonts.bitter(
                              color: black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          ordersModel.itemQuantity > 1
                              ? '${ordersModel.itemQuantity} items'
                              : '${ordersModel.itemQuantity} item',
                          style: GoogleFonts.bitter(color: black, fontSize: 12),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: const Icon(
                        IconsaxPlusBroken.arrow_right_3,
                        size: 24,
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
  }
}
