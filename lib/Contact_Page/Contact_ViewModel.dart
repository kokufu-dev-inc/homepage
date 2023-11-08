import 'package:flutter/material.dart';

class ContactViewModel {
  static int? maxLines = 1;
  static bool show = false;

  static var formKey = GlobalKey<FormState>();
  static final formKeyP = GlobalKey<FormState>();
  static final formKeyC = GlobalKey<FormState>();
  static final formKeyM = GlobalKey<FormState>();
  static final formKeyT = GlobalKey<FormState>();
  static final formKeyI = GlobalKey<FormState>();

  static var controller = TextEditingController();
  static var personalnamecontroller = TextEditingController();
  static var mailcontroller = TextEditingController();
  static var tellcontroller = TextEditingController();
  static var companynamecontroller = TextEditingController();
  static var inquirycontroller = TextEditingController();

  static final instanceC = ContactViewModel();

  late Function rebuildmodal;
  late Function rebuildtextfield;

  void getmodalstate(Function method) {
    rebuildmodal = method;
  }

  void gettextfieldstate(Function method) {
    rebuildtextfield = method;
  }

  void rebuild() {
    print(personalnamecontroller.text);
    print(mailcontroller.text);
    print(tellcontroller.text);
    print(companynamecontroller.text);
    print(inquirycontroller.text);
    // show = true;
    // rebuildmodal();
    rebuildtextfield();
    formKeyP.currentState!.validate();
    formKeyM.currentState!.validate();
    formKeyT.currentState!.validate();
    formKeyI.currentState!.validate();
    // if (formKey.currentState!.validate()) {
    //   print('必須のやつ');
    // }
  }
}
