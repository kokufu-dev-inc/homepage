import 'package:flutter/material.dart';

class ContactViewModel {
  final controllerP = TextEditingController();
  final controllerM = TextEditingController();
  final controllerT = TextEditingController();
  final controllerC = TextEditingController();
  final controllerI = TextEditingController();

  bool sendaction(GlobalKey<FormState> formkey) {
    if (formkey.currentState!.validate()) {
      debugPrint(controllerP.text);
      debugPrint(controllerC.text);
      debugPrint(controllerM.text);
      debugPrint(controllerT.text);
      debugPrint(controllerI.text);
      debugPrint('validate通った');
      return true;
    } else {
      debugPrint('validate引っかかった');
      return false;
    }
  }
}
