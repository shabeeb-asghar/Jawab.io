import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Button.dart';
import 'package:jawab_io/Widgets/Dots.dart';
import 'package:jawab_io/Widgets/Image_Container.dart';
import 'package:jawab_io/screens/Onboarding_Screens/onboarding_3.dart';
import 'package:jawab_io/Widgets/Utifility.dart';


class OnBoarding_2 extends StatelessWidget{
  const OnBoarding_2({super.key});
    void Press_Next_Button(BuildContext context)
  {
    Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const OnBoarding_3(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) => Slide_Animation(animation,child),
    ));  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
          children: [
            const SizedBox(width: 290,),
            Button("Skip",16,Colors.white,FontWeight.w300,const Color.fromARGB(255,36,22,73),20,80,() => Press_Skip_Button(context)),
          ],
        ),
        const SizedBox(height: 20,),
        const Image_Container(Image_Path: "Assets/Images/2.png",Y_Index_Shadow: 25, X_Index_Image: 78,Y_Index_Image: 65, Image_Height: 180, Image_Width: 180,),
        const SizedBox(height: 30,),
        const SizedBox(
          height: 170,
          child: Column(
            children: [
              SizedBox(width: 335, height: 100,child: Text("AI Translator",textAlign: TextAlign.center,style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.black
                
              ),),),
          SizedBox(width:300,child: Text("Accurate and contextual translations in Arabic for a deep and nuanced understanding.",textAlign: TextAlign.center,style: TextStyle(
            color: Color.fromARGB(255, 136, 136, 136),
            fontFamily: "Poppins",
            fontSize: 12,
            fontWeight: FontWeight.w300
          ),)),
            ],
          ),
        ),
        Button("Next", 16, Colors.white, FontWeight.w600, const Color.fromARGB(255,36,22,73), 50, 335, () =>Press_Next_Button(context)),
        const SizedBox(height: 20),
        const Padding(
          padding: EdgeInsets.only(left: 125),
          child: Dots(1),
        )
      ],)
      ),
    );
  }
}