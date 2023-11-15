import 'package:flutter/material.dart';
import 'package:proba/controllers/home_view_controller.dart';

/// Flutter code sample for [Radio].

void main() => runApp(const RadioGomb());

class RadioGomb extends StatelessWidget {
  const RadioGomb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/blaaa.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Center(
            child: RadioExample(),
          ),
        ),
      ),
    );
  }
}
