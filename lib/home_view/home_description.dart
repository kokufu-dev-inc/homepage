import 'package:flutter/material.dart';
import 'package:flutter_test_app/home_view/home_view_model.dart';
import 'package:flutter_test_app/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class Description extends StatelessWidget {
  const Description({
    super.key,
    required this.responsive,
  });

  final String responsive;

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: GoogleFonts.courierPrime(fontSize: KokufuFontsize.pS),
      child: Container(
        color: KokufuColors.backgroundF,
        width: double.infinity,
        padding: descriptionpadding(responsive),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1, child: descriptiontext(responsive)),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                      height: 300,
                      child: Image.asset(
                        Images.flutter,
                        fit: BoxFit.fitHeight,
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
