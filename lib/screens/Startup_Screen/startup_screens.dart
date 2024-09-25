import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Utility.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_1.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoarding_1()));
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Color.fromARGB(255,91, 58, 85),
                Blue_Color
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'Assets/Images/logo.png',
                  height: 150,
                  width: 150,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Jawab.io',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
