import 'package:figma/core/routenames.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/utils/getx_storage.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            sizedBox,
            Text(
              'Log in',
              style:
                  GoogleFonts.oswald(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            sizedBox,
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: 'Username',
                  filled: true,
                  fillColor: grey,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: purplish,
                    foregroundColor: white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    fixedSize: const Size(550, 40)),
                onPressed: () async {
                  try {
                    if (username.text.trim() == 'sanjarbek') {
                      Get.toNamed(RouteNames.passwordScreen);
                      StorageService storage = StorageService();
                      storage.write('username', username.text);
                    } else {
                      Get.snackbar(
                        'Failed',
                        'Invalid username',
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
              ),
            ),
           const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Dont\'t have an account?',
                    style: TextStyle(fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(RouteNames.signup);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: black),
                    ),
                  )
                ],
              ),
            ),
            sizedBox,
            sizedBox,
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Column(
                // mainAxisSize: Spacer(),

                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(
                        RouteNames.signup,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/apple.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 82),
                            const Text(
                              'Continue with apple',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(
                        RouteNames.signup,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          const  SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/facebook.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 80),
                            const Text(
                              'Continue with facebook',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(
                        RouteNames.signup,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 227, 227, 227),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                          const  SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/google.png',
                              width: 30,
                              height: 30,
                            ),
                            const SizedBox(width: 80),
                            const Text(
                              'Continue with google',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
