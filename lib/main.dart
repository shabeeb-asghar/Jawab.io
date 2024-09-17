import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Dots.dart';

void main() {
  runApp(const MainApp());
}

void onPressd() 
{}
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Dots(5),
        ),
      ),
    );
  }
}
