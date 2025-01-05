import 'package:homepage/theme/theme.dart';

class KokufuFontfamily {
  static const primary = 'Mukta';
  static const secondary = 'IBMPlexSansJP';
  static List<String> fontFamilyFallback = [
    // primary,
    secondary,
  ];
}

class KokufuFontSize {
  static const double firstview = 180;
  static const double h1 = 64;
  static const double h2 = 36;
  static const double h3 = 26;
  static const double p = 22;
  static const double small = 16;
  static const double extraSmall = 12;

  static responsive({
    required double screenWidth,
    required double defaultSize,
  }) {
    if (screenWidth > ScreenSize.width.webL) {
      return defaultSize;
    } else if (screenWidth > ScreenSize.width.webM) {
      return defaultSize * 0.85;
    }
    return defaultSize * 0.7;
  }
}
