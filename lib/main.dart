import 'package:flutter/material.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_1.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_10.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_2.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_3.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_4.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_9.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
<<<<<<< HEAD
        debugShowCheckedModeBanner: false, home: OnBoarding_3());
=======
      debugShowCheckedModeBanner: false,
      home: OnBoarding_10()
        );
>>>>>>> 4ee662533393ae2629857d13522ffff44bbe6bef
  }
}
