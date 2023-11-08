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
    if (formKeyP.currentState!.validate()) {
      debugPrint(personalnamecontroller.text);
      // debugPrint(mailcontroller.text);
      // debugPrint(tellcontroller.text);
      // debugPrint(companynamecontroller.text);
      // debugPrint(inquirycontroller.text);
      show = true;
      rebuildmodal();
    } else {
      debugPrint('validate引っかかった');
      rebuildtextfield();
    }
    //  if (formKeyM.currentState!.validate()) {
    //   debugPrint('validate完了');
    // }
    // if (formKeyT.currentState!.validate()) {
    //   debugPrint('validate完了');
    // }
    // if (formKeyI.currentState!.validate()) {
    //   debugPrint('validate完了');
    // }
  }
}
