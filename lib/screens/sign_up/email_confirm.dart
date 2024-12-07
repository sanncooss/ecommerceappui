import 'package:figma/core/routenames.dart';
import 'package:figma/utils/colors.dart';
import 'package:figma/utils/getx_storage.dart';
import 'package:figma/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailConfirm extends StatelessWidget {
  const EmailConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    StorageService storage = StorageService();
    String email = storage.read('email') ?? 'no provided email';
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://s3-alpha-sig.figma.com/img/2a79/88bf/70f4548361b00378b3d52898cf023ae2?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Gk~UKbZqsUU3i2OmLSEez~R6ZxBS9L84CKIvcSKCJtFyEYVM97zidRBdsH3~aQHv7OMFxus1ZVTtgg-2huT04kqcJ8sTRHnPqF~y4c~eq3woUT01jup8tgG6BsPkARHkIrAJRLor~He5vXrgJXUBvAmH7dwwTvHmJyZvRrjzeWy2E1TzNLrayjc3CoK7HQu8cKtTEfu1nCCEAM-moWYXxqTmX-L5XXysUavH5gizXeA~5oF00LjKL-IFPLT4PbJZGJsWdqf4MWWXBEZlCvisdLDRm-yMWm3u73KhxVy2FIJVxQn2OOKH2gc59nATkQgTkvvpJkb2LCqFpkF8k6zxiw__',
              width: 100,
              height: 100,
            ),
            sizedBox,
            Container(
              width: double.infinity,
              height: 100,
              alignment: Alignment.center,
              child: Text(
                // textDirection: ,
                'Email was sent to $email \nto reset password',
                style: GoogleFonts.oswald(
                  color: black,
                  fontSize: 33,
                ),
              ),
            ),
            sizedBox,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: purplish, fixedSize: Size(150, 50)),
                onPressed: () {
                  Get.toNamed(RouteNames.login);
                },
                child: Text(
                  'Return to login',
                  style: TextStyle(color: white),
                ))
          ],
        ),
      ),
    );
  }
}
