import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Button.dart';
import 'package:jawab_io/Widgets/Dots.dart';
import 'package:jawab_io/Widgets/Image_Container.dart';

void Press_Skip_Button()
{

}

void Press_Next_Button()
{

}

class OnBoarding_10 extends StatelessWidget{
  const OnBoarding_10({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: 
      Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
          children: [
            SizedBox(width: 290,),
            Button("Skip",16,Colors.white,FontWeight.w300,Color.fromARGB(255,36,22,73),20,80,Press_Skip_Button),
          ],
        ),
        SizedBox(height: 20,),
        Image_Container(Image_Path: "Assets/Images/10.png",X_Index_Shadow: 200,Y_Index_Shadow: 5, X_Index_Image: 43,Y_Index_Image: 20, Image_Height: 270, Image_Width: 270,),
        SizedBox(height: 30,),
        SizedBox(width: 335,child: Text("And many more amazing features",textAlign: TextAlign.center,style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.black
          
        ),),),
        SizedBox(height: 70,),
        Button("Next", 16, Colors.white, FontWeight.w600, Color.fromARGB(255,36,22,73), 50, 335,Press_Next_Button),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 125),
          child: Dots(3),
        )
      ],)
      ),
    );
  }
}