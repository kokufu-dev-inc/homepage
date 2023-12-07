import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';

class ProcessInformationCard extends StatelessWidget {
  const ProcessInformationCard({
    super.key,
    this.leading,
    required this.title,
    required this.description,
  });

  final Widget? leading;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 8,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 12,
          ),
          child: ListTile(
            leading: leading,
            title: H3(
              title,
              fontWeight: FontWeight.bold,
            ),
            subtitle: Text(
              description,
            ),
          ),
        ),
      ),
    );
  }
}
