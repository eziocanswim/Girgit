import 'package:flutter/material.dart';
import 'dart:math';

Color getRandomColor() {
  Random random = Random();
  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

class Button extends StatelessWidget {
  final String display;
  final Color color;
  final VoidCallback onTap;

  const Button({
    super.key,
    required this.display,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      backgroundColor: color,
      child: Text(
        display,
        style: const TextStyle(color: Colors.white, fontSize: 11),
      ),
    );
  }
}

class MainPageButtons extends StatelessWidget {
  final Function(Color) whenTapped;

  const MainPageButtons({super.key, required this.whenTapped});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Button(
              display: "BLACK",
              color: Colors.black,
              onTap: () => whenTapped(Colors.black),
            ),
            Button(
              display: "BLUE",
              color: Colors.blue,
              onTap: () => whenTapped(Colors.blue),
            ),
            Button(
              display: "RANDOM",
              color: Colors.purple,
              onTap: () => whenTapped(getRandomColor()),
            ),
            Button(
              display: "GREEN",
              color: Colors.green,
              onTap: () => whenTapped(Colors.green),
            ),
            Button(
                display: "RED",
                color: Colors.red,
                onTap: () => whenTapped(Colors.red))
          ],
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
