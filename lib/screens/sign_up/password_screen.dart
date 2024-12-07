import 'package:figma/core/routenames.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/utils/getx_storage.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    StorageService storage = StorageService();
    String username = storage.read('username');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // sizedBox,
              Text(
                'Sign in',
                style: GoogleFonts.oswald(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              sizedBox,
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: grey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: purplish,
                      foregroundColor: white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      fixedSize: const Size(550, 40)),
                  onPressed: () async {
                    try {
                      if (password.text.trim() == 'leel2121') {
                        Get.toNamed(RouteNames.home);
                        Get.snackbar(
                          'Login Successfully',
                          'Welcome back, ${username.trim()}!',
                          snackPosition: SnackPosition.TOP,
                          colorText: white,
                          backgroundColor: Colors.green,
                          duration: Duration(seconds: 3),
                        );
                      } else {
                        Get.snackbar(
                          'Login Failed',
                          'Invalid password.',
                          snackPosition: SnackPosition.BOTTOM,
                          backgroundColor: Colors.redAccent,
                          colorText: Colors.white,
                        );
                      }
                    } catch (e) {
                      Get.snackbar(
                        'Error',
                        'Something went wrong. Please try again.',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.orangeAccent,
                        colorText: Colors.white,
                      );
                    }
                  },
                  label: const Text('Continue'),
                  icon: const Icon(
                    Icons.login,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Forgot your password?',
                      style: TextStyle(fontSize: 12),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(RouteNames.passwordReset);
                      },
                      child: Text(
                        'Reset your password',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: black),
                      ),
                    )
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
