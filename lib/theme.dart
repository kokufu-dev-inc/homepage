import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//色の指定
class KokufuColors {
  static const highlite = Color(0xFFDCDCDC);
  static const flutter = Color(0xFF7BC7F3);
  static const background = Color(0xFFF8F7F6);
  static const backgroundF = Color(0xFF85D2FB);
}

//フォントサイズの指定
class KokufuFontsize {
  static double firstview = 180;
  static double h1 = 50;
  static double h2 = 32;
  static double h3 = 26;
  static double p = 16;
}

//画像の指定
class Images {
  static const firstview = 'assets/images/kokufu-cover4.png';
  static const firstviewWhite = 'assets/images/phones_white.jpeg';
  static const firstviewBlack = 'assets/images/phones_black.jpeg';
  static const firstviewBlue = 'assets/images/phones_blue.jpeg';
  static const banner = 'assets/images/banner-image.jpeg';
  static const flutter = 'assets/images/flutter_icon_black.png';
}

//字体の指定
class KokufuFontfamily {
  static const fontfamily = GoogleFonts.mukta;
}

//レスポンシブサイズ
class ScreenSize {
  static ScreenWidth get width {
    return ScreenWidth();
  }
}

class ScreenWidth {
  int webL = 1200;
  int webM = 600;
}

class Responsive {
  static String L = 'L';
  static String M = 'M';
  static String S = 'S';
}

double responsiveFontSizeH1(double screenWidth) {
  const double defaultsize = 50;
  if (screenWidth > ScreenSize.width.webL) {
    return defaultsize;
  } else if (screenWidth > ScreenSize.width.webM) {
    return defaultsize - 4;
  }
  return defaultsize - 18;
}

double responsiveFontSizeH2(double screenWidth) {
  const double defaultsize = 32;
  if (screenWidth > ScreenSize.width.webL) {
    return defaultsize;
  } else if (screenWidth > ScreenSize.width.webM) {
    return defaultsize - 4;
  }
  return defaultsize - 7;
}

double responsiveFontSizeH3(double screenWidth) {
  const double defaultsize = 26;
  if (screenWidth > ScreenSize.width.webL) {
    return defaultsize;
  } else if (screenWidth > ScreenSize.width.webM) {
    return defaultsize - 4;
  }
  return defaultsize - 8;
}

EdgeInsets responsivePadding(String responsive) {
  if (responsive == 'S') {
    return const EdgeInsets.fromLTRB(15, 30, 15, 30);
  } else if (responsive == 'M') {
    return const EdgeInsets.all(35);
  } else {
    return const EdgeInsets.all(70);
  }
}

double contactResponsiveWidth(String responsive) {
  if (responsive == 'S') {
    return 300;
  } else if (responsive == 'M') {
    return 550;
  } else {
    return 800;
  }
}
