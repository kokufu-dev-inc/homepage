import 'package:flutter/material.dart';

//画像の指定
class Images {
  static const firstview = 'assets/images/kokufu-cover4.png';
  static const firstviewWhite = 'assets/images/phones_white.jpeg';
  static const firstviewBlack = 'assets/images/phones_black.jpeg';
  static const firstviewBlue = 'assets/images/phones_blue.jpeg';
  static const banner = 'assets/images/banner-image.jpeg';
  static const flutter = 'assets/images/flutter_icon_black.png';
}

//レスポンシブサイズ
class ScreenSize {
  static ScreenWidth get width {
    return ScreenWidth();
  }
}

enum WebScreenSize {
  webS,
  webM,
  webL,
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
