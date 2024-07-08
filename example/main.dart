import 'package:flutter/material.dart';
import 'package:typing_text/typing_text.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Text("I am a ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300)),
              TypingTextAnimation(
                texts: ["Flutter Developer", "Dart Lover"],
                textStyle: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
