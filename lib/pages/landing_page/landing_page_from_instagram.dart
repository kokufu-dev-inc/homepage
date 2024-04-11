import 'package:flutter/material.dart';
import 'package:homepage/pages/home_page/home_page.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageFromInstagram extends StatelessWidget {
  static const String routeName = '/lp/instagram';

  const LandingPageFromInstagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const url =
        'https://apps.apple.com/jp/app/%E6%AD%AF%E3%81%A8%E5%A7%BF%E5%8B%A2/id6477772191';
    launchUrl(Uri.parse(url));
    return const HomePage();
  }
}
