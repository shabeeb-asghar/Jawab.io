import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Social_Button.dart';
import 'package:jawab_io/Widgets/Utility.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

 
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 150,),
            // Logo Section
            Image.asset("Assets/Images/Welcome.png", height: 105, width: 103,),
            const SizedBox(height: 10),
            const Text(
              'Jawab.io',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 28,
                color: Color.fromARGB(255,237, 128, 27),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),

            // Welcome Text
            const SizedBox(
              width: 170,
              child: Text(
                'Welcome on Jawab',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Sign In and Sign Up Buttons
            Column(
              children: [
                // Sign In Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Blue_Color,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {
                      // Handle Sign In
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Sign Up Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFFE0E0E0)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {
                      // Handle Sign Up
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Color(0xFF2E0548),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            const Column(
              children: [
                Text(
                  'Or continue with',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20),

                // Social Buttons (Google and Facebook)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Google Button
                    SocialButton(
                      onPressed: Press_Google_Button,
                      iconPath: 'Assets/Images/icon.png',
                    ),
                    SizedBox(width: 40),

                    // Facebook Button
                    SocialButton(
                      onPressed: Press_Facebook_Button,
                      iconPath: 'Assets/Images/fb.png',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
