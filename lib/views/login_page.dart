import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proba/views/login_view.dart';
import 'package:proba/views/register_view.dart';

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
        home: const LoginPage());
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/blaaa.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Üdvözlünk',
                    style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.black,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Üdvözlünk',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.red.shade400,
                    ),
                  ),
                ],
              ),
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Fitness Appunkba!',
                    style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.black,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Fitness Appunkba!',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.red.shade400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 590.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return LoginView();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.red,
                  minimumSize: Size(300, 40),
                ),
                child: Text('Belépés'),
              ),
              SizedBox(
                height: 7.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return RegisterView();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    foregroundColor: Colors.white,
                    minimumSize: Size(300, 40)),
                child: Text('Regisztráció'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
