import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/layout/section_layout.dart';
import 'package:flutter_test_app/theme/theme.dart';

class PrimaryMessage extends StatelessWidget {
  const PrimaryMessage({super.key});

  @override
  build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(Images.firstviewBlack),
        ),
      ),
      child: Container(
        color: Colors.white.withOpacity(0.85),
        child: const SectionLayout(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  FittedBox(
                    child: H1(
                      '最高のユーザー体験を\n提供するため\nお客様と共に\n寄り添って創り上げます',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              P(
                'スマホアプリを開発する目的を達成することに重きをおき、「本当に喜ばれるアプリとは何か」を常に考えて、お客様と共にプロダクトを創り上げていきます。',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
