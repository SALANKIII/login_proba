import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:proba/views/login_view.dart';

class RegisterViewController extends GetxController {
  TextEditingController becenev = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController jelszo = TextEditingController();

  void register() {
    if (becenev.text != "" && email.text != "" && jelszo.text != "") {
      Get.to(LoginView(), transition: Transition.cupertino);
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
    } else if (email.text == "") {
      Get.dialog(CupertinoAlertDialog(
        title: Text("Hiba"),
        content: Text("Nem adtad meg a emailed"),
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
