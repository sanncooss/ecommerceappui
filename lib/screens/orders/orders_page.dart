import 'package:figma/core/routenames.dart';
import 'package:figma/lists/orders_list.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/widgets/order_item.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

enum OrderStatus {
  processing,
  shipped,
  delivered,
  returned,
  canceled,
}

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: white,
        child: Column(
          children: [
            sizedBox,
            Text(
              'Orders',
              style: GoogleFonts.oswald(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            sizedBox,
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: OrderStatus.values.length,
                itemBuilder: (ctx, ind) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 16,
                      decoration: BoxDecoration(
                        color: purplish,
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                      ),
                      child: Text(
                        OrderStatus.values[ind].name[0].toUpperCase() +
                            OrderStatus.values[ind].name.substring(
                                1, OrderStatus.values[ind].name.length),
                        style: GoogleFonts.bitter(
                          color: white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: OrdersList.orders.length,
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                      onTap: () {
                        Get.toNamed(RouteNames.orderDetails,);
                      },
                      child: OrderItem(ordersModel: OrdersList.orders[index]));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
