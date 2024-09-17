import 'package:flutter/material.dart';
import 'package:jawab/screens/startup_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jawab.io',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StartupScreen(),
    );
  }
}
