import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContactTextField extends ConsumerWidget {
  const ContactTextField({
    super.key,
    this.hintText,
    this.required = false,
    required this.label,
    this.controller,
    this.validator,
    this.maxLength,
    this.maxLines,
  });

  final String label;
  final String? hintText;
  final bool required;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final int? maxLength;
  final int? maxLines;

  TextStyle get _textStyle {
    return const TextStyle(fontWeight: FontWeight.bold);
  }

  TextStyle get _errorTextStyle {
    return const TextStyle(color: Colors.red);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(label, style: _textStyle),
              Visibility(
                visible: required,
                child: Text(' *', style: _errorTextStyle),
              )
            ],
          ),
          TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: hintText,
              errorStyle: _errorTextStyle,
            ),
            controller: controller,
            validator: validator,
            maxLength: maxLength,
            maxLines: maxLines,
          ),
        ],
      ),
    );
  }
}
