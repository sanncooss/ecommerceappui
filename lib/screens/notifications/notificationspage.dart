import 'package:figma/utils/colors.dart';
import 'package:figma/utils/getx_storage.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

SizedBox sizedBoxWidth = const SizedBox(
  width: 20,
);

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    StorageService storage = StorageService();
    String username = storage.read('username') ?? 'no username';
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
      child: Column(
        children: [
          Text(
            'Notifications',
            style: GoogleFonts.oswald(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          sizedBox,
          Container(
            width: double.infinity,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: greyish,
                  ),
                  child: Row(
                    children: [
                      sizedBoxWidth,
                      Icon(
                        IconsaxPlusBroken.notification_bing,
                        size: 40,
                      ),
                      sizedBoxWidth,
                      Text(
                        '${username[0].toUpperCase() + username.substring(1, username.length)}, you placed and order check your \norder history for full details',
                        style: GoogleFonts.bitter(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: greyish,
                  ),
                  child: Row(
                    children: [
                      sizedBoxWidth,
                      Icon(
                        IconsaxPlusBroken.notification_bing,
                        size: 40,
                      ),
                      sizedBoxWidth,
                      Text(
                        '${username[0].toUpperCase() + username.substring(1, username.length)}, Thank you for shopping with \nus we have canceled order #24568.',
                        style: GoogleFonts.bitter(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: greyish,
                  ),
                  child: Row(
                    children: [
                      sizedBoxWidth,
                      Icon(
                        IconsaxPlusBroken.notification_bing,
                        size: 40,
                      ),
                      sizedBoxWidth,
                      Text(
                        '${username[0].toUpperCase() + username.substring(1, username.length)}, your Order #24568 has been  confirmed \ncheck  your order history for ful..',
                        style: GoogleFonts.bitter(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
