import 'package:flutter/material.dart';
import 'package:flutter_test_app/contact_view/contact_complete_modal.dart';
import 'package:flutter_test_app/contact_view/contact_form_title.dart';
import 'package:flutter_test_app/component/view/bar_importer.dart';
import 'package:flutter_test_app/contact_view/component/contact_form.dart';

class ContactViewWebM extends StatelessWidget {
  const ContactViewWebM({
    super.key,
    // required this.onSubmit,
    // required this.visible,
  });

  // final void Function() onSubmit;
  // final bool visible;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange.shade300,
      width: double.infinity,
      height: double.infinity,
      child: const Center(
        child: Text('タブレット'),
      ),
    );
    // Stack(
    //   children: [
    //     SingleChildScrollView(
    //       child: Column(
    //         children: [
    //           const ContactFormTitle(),
    //           ContactForm(
    //             onSubmit: onSubmit,
    //           ),
    //           const Footer(),
    //         ],
    //       ),
    //     ),
    //     Center(
    //       child: Visibility(
    //         visible: visible,
    //         child: const ContactCompleteModal(),
    //       ),
    //     ),
    //   ],
    // );
  }
}
