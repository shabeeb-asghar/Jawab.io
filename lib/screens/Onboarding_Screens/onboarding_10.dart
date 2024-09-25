import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Button.dart';
import 'package:jawab_io/Widgets/Dots.dart';
import 'package:jawab_io/Widgets/Image_Container.dart';
import 'package:jawab_io/Widgets/Utility.dart';
import 'package:jawab_io/screens/Welcome_Screen/welcome_screen.dart';



class OnBoarding_10 extends StatelessWidget{
  const OnBoarding_10({super.key});
  void Press_Next_Button(BuildContext context)
  {
    Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const WelcomeScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) => Slide_Animation(animation,child),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
          children: [
            const SizedBox(width: 290,),
            Button("Skip",16,Colors.white,FontWeight.w300,Blue_Color,20,80, () => Press_Skip_Button(context)),
          ],
        ),
        const SizedBox(height: 20,),
        const Image_Container(Image_Path: "Assets/Images/10.png",X_Index_Shadow: 108,Y_Index_Shadow: 5, X_Index_Image: 43,Y_Index_Image: 10, Image_Height: 280, Image_Width: 280,),
        const SizedBox(width: 335,height: 200,
        child: Center(
          child: Text("And many more amazing features",textAlign: TextAlign.center,style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.black
            
          ),),
        ),),
        Button("Next", 16, Colors.white, FontWeight.w600, Blue_Color, 50, 335, () => Press_Next_Button(context)),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 125),
          child: Dots(9),
        )
      ],)
      ),
    );
  }
}