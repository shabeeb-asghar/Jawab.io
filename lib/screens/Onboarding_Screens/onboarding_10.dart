import 'package:flutter/material.dart';
import 'package:jawab_io/Widgets/Button.dart';
import 'package:jawab_io/Widgets/Dots.dart';
import 'package:jawab_io/Widgets/Image_Container.dart';
import 'package:jawab_io/Widgets/Utifility.dart';



class OnBoarding_10 extends StatelessWidget{
  const OnBoarding_10({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Row(
          children: [
            const SizedBox(width: 290,),
            Button("Skip",16,Colors.white,FontWeight.w300,const Color.fromARGB(255,36,22,73),20,80, () => Press_Skip_Button(context)),
          ],
        ),
        const SizedBox(height: 20,),
        const Image_Container(Image_Path: "Assets/Images/10.png",X_Index_Shadow: 108,Y_Index_Shadow: 5, X_Index_Image: 43,Y_Index_Image: 10, Image_Height: 280, Image_Width: 280,),
        const SizedBox(height: 40,),
        const SizedBox(width: 335,child: Text("And many more amazing features",textAlign: TextAlign.center,style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: Colors.black
          
        ),),),
        const SizedBox(height: 50,),
        Button("Next", 16, Colors.white, FontWeight.w600, Color.fromARGB(255,36,22,73), 50, 335, () => Press_Skip_Button(context)),
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