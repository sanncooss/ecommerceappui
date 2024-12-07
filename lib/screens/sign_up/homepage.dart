import 'package:figma/screens/homescreen/homescreen.dart';
import 'package:figma/screens/notifications/notificationspage.dart';
import 'package:figma/screens/orders/orders_page.dart';
import 'package:figma/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomeScreen(),
    const NotificationsPage(),
    const OrdersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          backgroundColor:
              Colors.transparent, // Keeps the transparency from Container
          elevation: 0, // Removes the default shadow
          currentIndex: currentIndex,
          // selectedItemColor: purplish,
          fixedColor: purplish,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: ' ',
              icon: Icon(
                IconsaxPlusBroken.home,
                color: black,
              ),
            ),
            BottomNavigationBarItem(
              label: ' ',
              icon: Icon(
                IconsaxPlusBroken.notification_bing,
                color: black,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                IconsaxPlusBroken.receipt_1,
                color: black,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                IconsaxPlusBroken.profile,
                color: black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
