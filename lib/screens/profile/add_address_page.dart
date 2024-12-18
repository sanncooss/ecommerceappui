import 'package:figma/screens/profile/addresses_screen.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/utils/getx_storage.dart';
import 'package:figma/widgets/backbutton.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

TextEditingController streetAddressController = TextEditingController();
TextEditingController cityController = TextEditingController();
TextEditingController stateController = TextEditingController();
TextEditingController zipCodeController = TextEditingController();
StorageService storageService = StorageService();

class _AddAddressPageState extends State<AddAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              sizedBox,
              Row(
                children: [
                  BackButtonn(),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'Add Address',
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 340,
                child: Column(
                  children: [
                    TextField(
                      controller: streetAddressController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: greyish,
                          label: Text(
                            'Street address',
                            style: TextStyle(color: blackGrey, fontSize: 16),
                          )),
                    ),
                    TextField(
                      controller: cityController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: greyish,
                          label: Text(
                            'City',
                            style: TextStyle(color: blackGrey, fontSize: 16),
                          )),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: stateController,
                            decoration: InputDecoration(
                                label: Text(
                                  'State',
                                  style:
                                      TextStyle(color: blackGrey, fontSize: 16),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: zipCodeController,
                            decoration: InputDecoration(
                                label: Text(
                                  'Zip Code',
                                  style:
                                      TextStyle(color: blackGrey, fontSize: 16),
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          try {
                            StorageService storageService = StorageService();
                            storageService.write(
                                'zipcode', zipCodeController.text);
                            storageService.write('city', cityController.text);
                            storageService.write('state', stateController.text);
                            storageService.write(
                                'street', streetAddressController.text);

                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (ctx) => AddressesScreen(
                                  zipCode: int.parse(zipCodeController.text),
                                  city: cityController.text,
                                  state: stateController.text,
                                  street: streetAddressController.text,
                                ),
                              ),
                            );
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    'Failed to save address. Please try again'),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: purplish,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Save',
                            style:
                                GoogleFonts.roboto(fontSize: 18, color: white),
                          ),
                        ),
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
