import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

class BackButtonn extends StatelessWidget {
  const BackButtonn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(shape: CircleBorder()),
      onPressed: () {
        Get.back(result: true);
      },
      child: Image.asset(
        'assets/backbutton.png',
      ),
    );
  }
}
