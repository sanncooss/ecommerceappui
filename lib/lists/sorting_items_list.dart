import 'package:figma/utils/colors.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

Widget sort(BuildContext context) {
  return ElevatedButton.icon(
    iconAlignment: IconAlignment.end,
    label: Text(
      'Sort by',
      style: GoogleFonts.roboto(fontSize: 16, color: black),
    ),
    style: ElevatedButton.styleFrom(
        backgroundColor: greyish, fixedSize: Size(130, 20)),
    onPressed: () {
      Get.bottomSheet(
        Container(
          decoration: BoxDecoration(
              color: white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Clear',
                      style: GoogleFonts.roboto(fontSize: 22),
                    ),
                    Text(
                      'Sort',
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
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                    color: purplish,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: white,
                          ),
                        ),
                        Icon(
                          Icons.check,
                          color: white,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                    color: greyish,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Newest',
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                    color: greyish,
                  ),
                  height: 50,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lowest - Highest Price',
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
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
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Highest - Lowest Price',
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
    icon: Icon(
      IconsaxPlusBroken.arrow_down_2,
      color: black,
      // size: 16,
    ),
  );
}

Widget filter() {
  return ElevatedButton.icon(
    iconAlignment: IconAlignment.end,
    style: ElevatedButton.styleFrom(
      fixedSize: const Size(70, 45),
      backgroundColor: purplish,
    ),
    onPressed: () {},
    label: Text(
      '2',
      style: TextStyle(color: white, fontSize: 16),
    ),
    icon: Icon(
      IconsaxPlusBroken.filter,
      color: white,
      size: 16,
    ),
  );
}

Widget onSale(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: greyish, fixedSize: const Size(120, 47)),
    onPressed: () {
      Get.bottomSheet(
        Container(
          decoration: BoxDecoration(
              color: white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Clear',
                      style: GoogleFonts.roboto(fontSize: 22),
                    ),
                    Text(
                      'Deals',
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
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'On sale',
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
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free shipping eligble',
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
    child: Text(
      'On Sale',
      style: GoogleFonts.roboto(fontSize: 16, color: black),
    ),
  );
}

Widget price(BuildContext context) {
  return ElevatedButton.icon(
    iconAlignment: IconAlignment.end,
    label: Text(
      'Price',
      style: GoogleFonts.roboto(fontSize: 16, color: white),
    ),
    style: ElevatedButton.styleFrom(
        backgroundColor: purplish, fixedSize: const Size(120, 47)),
    onPressed: () {
      Get.bottomSheet(
        Container(
          decoration: BoxDecoration(
              color: white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Clear',
                      style: GoogleFonts.roboto(fontSize: 22),
                    ),
                    Text(
                      'Price',
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
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: greyish,
                      label: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Min',
                          style: TextStyle(
                            color: Color.fromARGB(255, 68, 67, 67),
                          ),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none)),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: greyish,
                      label: const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Max',
                          style:
                              TextStyle(color: Color.fromARGB(255, 68, 67, 67)),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none)),
                ),
              ],
            ),
          ),
        ),
      );
    },
    icon: Icon(
      IconsaxPlusBroken.arrow_down_2,
      color: white,
    ),
  );
}

Widget gender(BuildContext context) {
  return ElevatedButton.icon(
    iconAlignment: IconAlignment.end,
    label: Text(
      'Gender',
      style: GoogleFonts.roboto(fontSize: 16, color: white),
    ),
    style: ElevatedButton.styleFrom(
        backgroundColor: purplish, fixedSize: const Size(125, 47)),
    onPressed: () {
      Get.bottomSheet(
        Container(
          decoration: BoxDecoration(
              color: white,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Clear',
                      style: GoogleFonts.roboto(fontSize: 22),
                    ),
                    Text(
                      'Gender',
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
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Male',
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
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Women',
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w600),
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
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'kids',
                          style: GoogleFonts.roboto(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
    icon: Icon(
      IconsaxPlusBroken.arrow_down_2,
      color: white,
    ),
  );
}
