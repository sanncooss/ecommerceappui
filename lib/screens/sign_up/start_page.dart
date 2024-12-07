import 'package:figma/core/routenames.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Get.offAndToNamed(RouteNames.login);
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 108, 23, 123),
                Color.fromARGB(255, 156, 37, 177),
                Color.fromARGB(255, 225, 132, 242),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [
                0.25,
                0.50,
                0.95,
              ],
            ),
          ),
          child: Center(
            child: Text(
              'Loki',
              style: GoogleFonts.oswald(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
