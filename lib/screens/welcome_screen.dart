import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Image_Container_Dynamic.dart';

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
            // Logo Section
            const Column(
              children: [
                Image_Container_Dynamic(
                  Image_Path: "Assets/Images/logo.png",
                  Y_Index_Shadow: 15,
                  X_Index_Shadow: 25,
                  X_Index_Image: 65,
                  Y_Index_Image: 55,
                  Image_Height: 120,
                  Image_Width: 120,
                  Container_Height: 220, // Reduce container height
                  Container_Width: 220, // Reduce container width
                ),

                // Image.asset(
                //   'Assets/Images/logo.png',
                //   height: 120,
                // ),
                const SizedBox(height: 20),
                const Text(
                  'Jawab.io',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 30,
                    color: Color(0xFFF7941D),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Welcome Text
            const Text(
              'Welcome on Jawab',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
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
                      backgroundColor: const Color(0xFF2E0548), // Dark purple
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
                        fontFamily: 'Roboto',
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
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        color: Color(0xFF2E0548), // Dark purple
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            const Column(
              children: const [
                Text(
                  'Or continue with',
                  style: TextStyle(
                    fontFamily: 'Roboto',
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
                      iconPath: 'Assets/Images/icon.png',
                    ),
                    SizedBox(width: 20),

                    // Facebook Button
                    SocialButton(
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

class SocialButton extends StatelessWidget {
  final String iconPath;

  const SocialButton({Key? key, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image.asset(
        iconPath,
        height: 30,
        width: 30,
      ),
    );
  }
}
