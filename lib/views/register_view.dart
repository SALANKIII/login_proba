import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proba/controllers/register_view_controller.dart';

class RegisterView extends StatelessWidget {
  RegisterViewController controller = Get.put(RegisterViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Regisztráció")),
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
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller.becenev,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Becenév',
                    hintText: 'Add meg a beceneved'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller.email,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Írd be az emailed'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: controller.jelszo,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Jelszó',
                    hintText: 'Írd be a jelszavad'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: CupertinoButton(
                color: Colors.red,
                child: Text("Regisztráció"),
                onPressed: () {
                  controller.register();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
