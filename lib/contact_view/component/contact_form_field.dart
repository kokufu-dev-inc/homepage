import 'package:flutter/material.dart';
import 'package:flutter_test_app/component/html/html_importer.dart';
import 'package:flutter_test_app/contact_view/component/contact_require_label.dart';

class ContactFormField extends StatelessWidget {
  const ContactFormField({
    super.key,
    required this.title,
    required this.labeltext,
    this.hinttext = '',
    required this.controller,
    this.maxlines = 1,
    this.require = false,
    this.validator,
  });
  final String title;
  final String labeltext;
  final String hinttext;
  final TextEditingController controller;

  final int? maxlines;
  final bool require;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                P(text: title),
                Visibility(visible: require, child: const RequireLabel())
              ],
            ),
          ),
          TextFormField(
            validator: validator,
            maxLines: maxlines,
            controller: controller,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labeltext,
              hintText: hinttext,
              errorText: null,
            ),
          ),
        ],
      ),
    );
  }
}
