import 'package:figma/core/routenames.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/widgets/backbutton.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.ce,
          children: [
            sizedBox,
            const BackButtonn(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Forgot password',
                style: GoogleFonts.oswald(fontSize: 50),
              ),
            ),
            sizedBox,
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Enter email address ',
                  filled: true,
                  fillColor: grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            sizedBox,
            Padding(
              padding: const EdgeInsets.only(left: 26.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: purplish,
                  foregroundColor: white,
                  fixedSize: const Size(450, 40),
                ),
                onPressed: () {
                  final storage = GetStorage();

                  if (email.text.isNotEmpty && email.text.contains('@')) {
                    storage.write('email', email.text.trim());

                    Get.offAllNamed(RouteNames.emailConfirm);
                  } else {
                    Get.snackbar(
                      'Invalid Email',
                      'Please enter a valid email address',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.redAccent,
                      colorText: Colors.white,
                    );
                  }
                },
                label: const Text('Confirm'),
                icon: const Icon(
                  Icons.email,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
