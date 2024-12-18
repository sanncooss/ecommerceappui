import 'package:figma/screens/profile/add_address_page.dart';
import 'package:figma/screens/profile/addresses_screen.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/utils/getx_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

StorageService storageService = StorageService();
String username = storageService.read('username');
String address = storageService.read('address') ?? 'no address';
String zipcode = storageService.read('zipcode') ?? 'no zipcode';
String city = storageService.read('city') ?? 'no city';
String state = storageService.read('state') ?? 'no state';
String street = storageService.read('street') ?? 'no street';

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset('assets/profile.png'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username[0].toUpperCase() +
                            username.substring(1),
                        style: GoogleFonts.bitter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${username[0].toUpperCase() + username.substring(0, username.length)}@gmail.com',
                        style: GoogleFonts.bitter(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '+998-90-077-71-99',
                        style:
                            GoogleFonts.bitter(fontSize: 17, color: blackGrey),
                      ),
                    ],
                  ),
                  Text(
                    'Edit',
                    style: GoogleFonts.bitter(
                      fontSize: 18,
                      color: purplish,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 530,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => address == 'no address'
                          ? const AddAddressPage()
                          : AddressesScreen(
                              zipCode: int.parse(zipcode),
                              city: city,
                              state: state,
                              street: street)));
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'Address',
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                          ),
                        ),
                        const Icon(
                          IconsaxPlusBroken.arrow_right_3,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Address',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                      const Icon(
                        IconsaxPlusBroken.arrow_right_3,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Address',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                      const Icon(
                        IconsaxPlusBroken.arrow_right_3,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Address',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                      const Icon(
                        IconsaxPlusBroken.arrow_right_3,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text(
                        'Address',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                      const Icon(
                        IconsaxPlusBroken.arrow_right_3,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
