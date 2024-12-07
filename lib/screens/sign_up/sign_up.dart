import 'package:figma/core/routenames.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/utils/getx_storage.dart';
import 'package:figma/widgets/backbutton.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  StorageService storage = StorageService();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordConfirm = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBox,
              const BackButtonn(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Create an account',
                  style: GoogleFonts.oswald(
                    fontSize: 56,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 390,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextField(
                        controller: username,
                        decoration: InputDecoration(
                          hintText: 'Enter username',
                          filled: true,
                          fillColor: grey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      TextField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: 'Enter email',
                          filled: true,
                          fillColor: grey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      TextField(
                        controller: password,
                        decoration: InputDecoration(
                          hintText: 'Enter paswword',
                          filled: true,
                          fillColor: grey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      TextField(
                        controller: passwordConfirm,
                        decoration: InputDecoration(
                          hintText: 'Confirm password',
                          filled: true,
                          fillColor: grey,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                      sizedBox,
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: purplish,
                            foregroundColor: white,
                            fixedSize: const Size(450, 40)),
                        onPressed: () async {
                          try {
                            if (username.text.trim().length >= 5 &&
                                password.text.trim().length >= 6 &&
                                password.text.trim() ==
                                    passwordConfirm.text.trim() &&
                                email.text.trim().contains('@') &&
                                email.text.trim().length >= 10) {
                              Get.offAllNamed(RouteNames.details);
                              storage.write('username', username.text);
                              Get.snackbar('Signed up Successfully',
                                  'Welcome ${username.text}',
                                  duration: const Duration(seconds: 3),
                                  backgroundColor: Colors.green,
                                  colorText: white);
                            } else {
                              Get.snackbar(
                                'Sign up failed',
                                'Please, fill all gaps properly.',
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
                        label: const Text('Sign up'),
                        icon: const Icon(
                          Icons.login,
                        ),
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
  }
}
