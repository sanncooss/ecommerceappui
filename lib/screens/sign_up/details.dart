import 'package:figma/core/routenames.dart';
import 'package:figma/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final storage = GetStorage();
  String selectedGender = '';
  int selectedAge = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Profile Details',
          style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tell us About Yourself',
                style: GoogleFonts.kanit(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Choose your gender:',
                style:
                    GoogleFonts.nunito(fontSize: 20, color: Colors.grey[800]),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  genderOption(
                    label: 'Male',
                    icon: Icons.male,
                    isSelected: selectedGender == 'Male',
                    onTap: () {
                      setState(() {
                        selectedGender = 'Male';
                      });
                    },
                    selectedGradient: const LinearGradient(
                      colors: [Colors.blue, Colors.blueAccent],
                    ),
                  ),
                  genderOption(
                    label: 'Female',
                    icon: Icons.female,
                    isSelected: selectedGender == 'Female',
                    onTap: () {
                      setState(() {
                        selectedGender = 'Female';
                      });
                    },
                    selectedGradient: const LinearGradient(
                      colors: [Colors.pink, Colors.pinkAccent],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              if (selectedGender.isNotEmpty)
                Center(
                  child: Text(
                    'Selected Gender: $selectedGender',
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              const SizedBox(height: 24),
              Text(
                'Select your age:',
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: NumberPicker(
                  decoration: BoxDecoration(
                    // color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple.withOpacity(0.3),
                        blurRadius: 5,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  selectedTextStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.deepPurple,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                  minValue: 14,
                  maxValue: 100,
                  value: selectedAge,
                  onChanged: (value) {
                    setState(() {
                      selectedAge = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  'Selected Age: $selectedAge',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedGender.isNotEmpty && selectedAge >= 18) {
                      Get.offAllNamed(
                        RouteNames.home,
                      );
                      Get.snackbar('Welcome', '');
                    } else {
                      Get.snackbar(
                        'Choose gender',
                        'try again',
                        backgroundColor: Colors.red,
                        colorText: white,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: Colors.deepPurple,
                  ),
                  child: Text(
                    'Finish',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget genderOption({
    required String label,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
    required LinearGradient selectedGradient,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: 150,
        height: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: isSelected
              ? selectedGradient
              : const LinearGradient(
                  colors: [
                    Colors.grey,
                    Colors.grey,
                  ],
                ),
          borderRadius: BorderRadius.circular(isSelected ? 30 : 10),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  )
                ]
              : [],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60,
              color: isSelected ? Colors.white : Colors.grey[800],
            ),
            const SizedBox(height: 10),
            Text(
              label,
              style: GoogleFonts.oswald(
                fontSize: 20,
                color: isSelected ? Colors.white : Colors.grey[800],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
