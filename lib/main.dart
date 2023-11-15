import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proba/views/home_view.dart';
import 'package:proba/views/login_page.dart';


void main() {
  runApp(const MainApp());
}

// https://picsum.photos/id/237/200/300
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: RadioGomb());
  }
}

