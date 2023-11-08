import 'package:flutter/material.dart';

class ContactViewModel {
  static int? maxLines = 1;
  static bool modalshow = false;
  static bool errortextshow = false;

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
  late Function rebuilderrortext;

  void getmodalstate(Function method) {
    rebuildmodal = method;
  }

  void geterrortextstate(Function method) {
    rebuilderrortext = method;
  }

  void rebuild() {
    formKeyP.currentState!.validate();
    formKeyM.currentState!.validate();
    formKeyT.currentState!.validate();
    formKeyI.currentState!.validate();
    if (formKeyP.currentState!.validate() &&
        formKeyM.currentState!.validate() &&
        formKeyT.currentState!.validate() &&
        formKeyI.currentState!.validate()) {
      debugPrint(personalnamecontroller.text);
      debugPrint(mailcontroller.text);
      debugPrint(tellcontroller.text);
      debugPrint(companynamecontroller.text);
      debugPrint(inquirycontroller.text);
      modalshow = true;
      errortextshow = false;
      rebuildmodal();
      rebuilderrortext();
    } else {
      debugPrint('validate引っかかった');
      errortextshow = true;
      rebuilderrortext();
    }
  }

  void totopaction() {
    modalshow = false;
    errortextshow = false;
    controller.clear();
    personalnamecontroller.clear();
    mailcontroller.clear();
    tellcontroller.clear();
    companynamecontroller.clear();
    inquirycontroller.clear();
  }
}
