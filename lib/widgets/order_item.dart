import 'package:figma/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum OrderStatus {
  processing,
  shipped,
  delivered,
  returned,
  canceled,
}

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: greyish,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: OrderStatus.values.length,
              itemBuilder: (ctx, ind) {
                return Container(
                  width: 50,
                  height: 26,
                  // foregroundDecoration: Dec ,
                  decoration: BoxDecoration(
                    color: purplish,
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                  child: Text(
                    OrderStatus.values[ind].name,
                    style: GoogleFonts.bitter(
                      color: white,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
