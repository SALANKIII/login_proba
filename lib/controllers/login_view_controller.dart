import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proba/views/home_view.dart';

class LoginViewController extends GetxController {
  TextEditingController becenev = TextEditingController();
  TextEditingController jelszo = TextEditingController();

  void login() {
    if (becenev.text != "" && jelszo.text != "") {
      Get.to(RadioGomb(), transition: Transition.cupertino);
    } else if (becenev.text == "") {
      Get.dialog(CupertinoAlertDialog(
        title: Text("Hiba"),
        content: Text("Nem adtad meg a beceneved"),
        actions: [
          CupertinoDialogAction(
            child: Text("Ok"),
            onPressed: () {
              Get.back();
            },
          )
        ],
      ));
      
    } else {
      Get.dialog(CupertinoAlertDialog(
        title: Text("Hiba"),
        content: Text("Nem adtad meg a jelszavad"),
        actions: [
          CupertinoDialogAction(
            child: Text("Ok"),
            onPressed: () {
              Get.back();
            },
          )
        ],
      ));
    }
  }
}
