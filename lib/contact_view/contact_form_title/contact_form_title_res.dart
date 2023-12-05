import 'package:flutter/material.dart';

BoxFit contactformboxfit(double screenWidth) {
  if (screenWidth > 420) {
    return BoxFit.fitWidth;
  } else {
    return BoxFit.fitHeight;
  }
}
