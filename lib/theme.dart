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
  static double h1S = 50;
  static double h2S = 30;
  static double h3S = 25;
  static double pS = 18;
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
