import 'package:flutter/material.dart';

class ContactViewModel {
  static int? maxLines = 1;
  static bool show = false;
  static var controller = TextEditingController();
  static var personalnamecontroller = TextEditingController();
  static var mailcontroller = TextEditingController();
  static var tellcontroller = TextEditingController();
  static var companynamecontroller = TextEditingController();
  static var inquirycontroller = TextEditingController();
  static final instanceC = ContactViewModel();

  late Function rebuildmodal;

  void textprint(Function method) {
    rebuildmodal = method;
    print(personalnamecontroller.text);
    print(mailcontroller.text);
    print(tellcontroller.text);
    print(companynamecontroller.text);
    print(inquirycontroller.text);
  }

  void rebuildModal() {
    show = true;
    rebuildmodal();
  }
}
