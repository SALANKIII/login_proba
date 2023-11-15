import 'package:flutter/material.dart';

enum SingingCharacter { ferfi, no }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character = SingingCharacter.ferfi;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/blaaa.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Nem választás',
                    style: TextStyle(
                      fontSize: 30,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.black,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Nem választás',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red.shade400,
                    ),
                  ),
                ],
              ),
        ),
        ListTile(
          title: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Férfi',
                    style: TextStyle(
                      fontSize: 30,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.black,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Férfi',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red.shade400,
                    ),
                  ),
                ],
              ),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateColor.resolveWith(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.black;
                }
                return Colors.red;
              },
            ),
            activeColor: Colors.black,
            value: SingingCharacter.ferfi,
            hoverColor: Colors.red,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Nő',
                    style: TextStyle(
                      fontSize: 30,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.black,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Nő',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red.shade400,
                    ),
                  ),
                ],
              ),
          leading: Radio<SingingCharacter>(
            fillColor: MaterialStateColor.resolveWith(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.selected)) {
                  return Colors.white;
                }
                return Colors.white;
              },
            ),
            activeColor: Colors.white,
            value: SingingCharacter.no,
            hoverColor: Colors.white,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Hány éves vagy?',
                    style: TextStyle(
                      fontSize: 30,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.black,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Hány éves vagy?',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.red.shade400,
                    ),
                  ),
                ],
              ),
        ),
      ],
    );
  }
}
