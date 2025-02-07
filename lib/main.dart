import 'package:flutter/material.dart';
import 'package:color_changer/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ColorChangerMainPage(),
    );
  }
}

class ColorChangerMainPage extends StatefulWidget {
  const ColorChangerMainPage({super.key});

  @override
  _ColorChangerMainPageState createState() => _ColorChangerMainPageState();
}

class _ColorChangerMainPageState extends State<ColorChangerMainPage> {
  Color _backgroundColor = Colors.white;

  void _changeColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFADD8E6),
        title: const Text(
          "C O L O R   C H A N G E R",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: _backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainPageButtons(whenTapped: _changeColor),
            ],
          ),
          const SizedBox(height: 25),
        ],
      ),
    );
  }
}
