import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Button.dart';
import 'package:jawab_io/Widgets/Dots.dart';
import 'package:jawab_io/Widgets/Image_Container.dart';
import 'package:jawab_io/Widgets/Utility.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_2.dart';



class OnBoarding_1 extends StatelessWidget{
  const OnBoarding_1({super.key});
  void Press_LetsGo_Button(BuildContext context)
  {
    Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const OnBoarding_2(),
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
            Button("Skip",16,Colors.white,FontWeight.w300,Blue_Color,20,80,() => Press_Skip_Button(context)),
          ],
        ),
        const SizedBox(height: 20,),
        const Image_Container(Image_Path: "Assets/Images/1.png"),
        const SizedBox(height: 30,),
        const SizedBox(width: 335, height: 170,child: Text("Welcome on Jawab Let me show you what we can do for you !",textAlign: TextAlign.center,style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.black
          
        ),),),
        Button("Let's Go !", 16, Colors.white, FontWeight.w600, Blue_Color, 50, 335, () => Press_LetsGo_Button(context)),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 125),
          child: Dots(0),
        )
      ],)
      ),
    );
  }
}