import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proba/controllers/login_view_controller.dart';

class LoginView extends StatelessWidget {
  LoginViewController controller = Get.put(LoginViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginViewController>(
        init: controller,
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Center(child: Text("Bejelentkezés")),
              backgroundColor: Colors.red,
            ),
            body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/blaaa.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      controller: controller.becenev,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Add meg a beceneved",
                        labelText: "Becenév",
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: TextField(
                      obscureText: true,
                      controller: controller.jelszo,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Add meg a jelszavad",
                        labelText: "Jelszó",
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                    child: CupertinoButton(
                      color: Colors.red,
                      child: Text("Bejelentkezés"),
                      onPressed: () {
                        controller.login();
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
