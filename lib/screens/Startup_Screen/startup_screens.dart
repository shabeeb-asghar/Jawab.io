import 'package:flutter/material.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_1.dart';

class StartupScreen extends StatelessWidget {
  const StartupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const OnBoarding_1() ))
        },
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF42275A),
                Color(0xFF734B6D),
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
                const SizedBox(height: 20),
                const Text(
                  'Jawab.io',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
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
