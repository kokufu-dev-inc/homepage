import 'package:flutter/material.dart';
import 'package:homepage/component/html/html_importer.dart';
import 'package:homepage/layout/section_layout.dart';
import 'package:homepage/theme/theme.dart';

class PrimaryMessage extends StatelessWidget {
  const PrimaryMessage({
    super.key,
    this.width,
  });

  final double? width;

  @override
  build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Images.firstviewBlack),
          ),
        ),
        child: Container(
          color: Colors.white.withOpacity(0.85),
          child: SectionLayout(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SectionLayout(
                  width: width,
                  verticalPadding: 0,
                  child: const Column(
                    children: [
                      FittedBox(
                        child: H1(
                          '最高のユーザー体験を\n提供するため\nお客様と共に\n寄り添って創り上げます',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SectionLayout(
                  width: width,
                  verticalPadding: 0,
                  child: const P(
                    'スマホアプリを開発する目的を達成することに重きをおき、「本当に喜ばれるアプリとは何か」を常に考えて、お客様と共にプロダクトを創り上げていきます。',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
