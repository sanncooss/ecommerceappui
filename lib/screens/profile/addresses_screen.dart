import 'package:figma/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressesScreen extends StatefulWidget {
  const AddressesScreen({
    super.key,
    required this.zipCode,
    required this.city,
    required this.state,
    required this.street,
  });

  final int zipCode;
  final String city;
  final String state;
  final String street;

  @override
  State<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.grey[200],
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(); 
                    },
                    child: Image.asset(
                      'assets/backbutton.png',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  const SizedBox(width: 20),

                  Expanded(
                    child: Card(
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                '${widget.zipCode}, ${widget.street}',
                                style: const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const Spacer(),

                            // Edit Button/Text
                            GestureDetector(
                              onTap: () {
                                // Add functionality for editing the address
                                print('Edit Address Clicked');
                              },
                              child: Text(
                                'Edit',
                                style: GoogleFonts.bitter(
                                  fontSize: 16,
                                  color: purplish,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
