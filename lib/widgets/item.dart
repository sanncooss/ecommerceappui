import 'package:figma/model/items_model.dart';
import 'package:figma/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.items});
  final Items items;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.network(
                  items.image,
                  width: 200,
                  height: 210,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                right: 10,
                top: 10,
                child: Icon(
                  IconsaxPlusBroken.heart,
                ),
              )
            ],
          ),
          Container(
            width: 200,
            height: 70,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: greyish,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(
                  8,
                ),
                bottomRight: Radius.circular(
                  8,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items.name,
                  style: TextStyle(color: black),
                ),
                Text(
                  "\$${items.price}",
                  style: TextStyle(
                    color: black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
