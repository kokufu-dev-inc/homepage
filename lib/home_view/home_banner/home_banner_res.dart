import 'package:flutter/material.dart';

BoxFit homeBannerFit(double screenWidth) {
  if (screenWidth > 350) {
    return BoxFit.fitWidth;
  } else {
    return BoxFit.fitHeight;
  }
}
