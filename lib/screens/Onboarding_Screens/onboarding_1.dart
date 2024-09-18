import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Button.dart';
import 'package:jawab_io/Widgets/Dots.dart';
import 'package:jawab_io/Widgets/Image_Container.dart';

void Press_Skip_Button()
{

}

void Press_LetsGo_Button()
{

}

class OnBoarding_1 extends StatelessWidget{
  const OnBoarding_1({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: 
      Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Padding(padding: EdgeInsets.only(left: 300), child: Button("Skip",16,Colors.white,FontWeight.w300,Color.fromARGB(255,36,22,73),20,80,Press_Skip_Button)),
        SizedBox(height: 20,),
        Image_Container(Image_Path: "Assets/Images/1.png"),
        SizedBox(height: 30,),
        SizedBox(width: 335,child: Text("Welcome on Jawab Let me show you what we can do for you !",textAlign: TextAlign.center,style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.black
          
        ),),),
        SizedBox(height: 30,),
        Button("Let's Go !", 16, Colors.white, FontWeight.w600, Color.fromARGB(255,36,22,73), 50, 335,Press_LetsGo_Button),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.only(left: 125),
          child: Dots(0),
        )
      ],)
      ),
    );
  }
}