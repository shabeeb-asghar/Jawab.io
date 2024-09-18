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

class OnBoarding_9 extends StatelessWidget{
  const OnBoarding_9({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Stack(
        children: [const Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Row(
            children: [
              SizedBox(width: 290,),
              Button("Skip",16,Colors.white,FontWeight.w300,Color.fromARGB(255,36,22,73),20,80,Press_Skip_Button),
            ],
          ),
          SizedBox(height: 20,),
          Image_Container(Image_Path: "Assets/Images/9.png",Y_Index_Shadow: 25, X_Index_Image: 78,Y_Index_Image: 65, Image_Height: 180, Image_Width: 180,),
          SizedBox(height: 30,),
          SizedBox(width: 335,child: Text("Conjugate Verbs",textAlign: TextAlign.center,style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Colors.black
            
          ),),),
          SizedBox(height: 30,),
          SizedBox(width:300,child: Text("Instantly conjugate Arabic verbs with ease, simplifying the mastery of different tenses.",textAlign: TextAlign.center,style: TextStyle(
            color: Color.fromARGB(255, 136, 136, 136),
            fontFamily: "Poppins",
            fontSize: 12,
            fontWeight: FontWeight.w300
          ),)),
          SizedBox(height: 30,),
          Button("Next", 16, Colors.white, FontWeight.w600, Color.fromARGB(255,36,22,73), 50, 335,Press_Next_Button),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(left: 125),
            child: Dots(8),
          )
        ],),
        Positioned(
          top: 250,
          left: 155,
          height: 280,width: 280,
          child: Image.asset("Assets/Images/7_2.png")),
        ]
      )
      ),
    );
  }
}