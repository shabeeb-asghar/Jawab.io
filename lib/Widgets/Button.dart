import 'package:flutter/material.dart';

class Button extends StatelessWidget
{
  final String Button_Text;
  final double Text_Size;
  final Color Text_Color;
  final Color Button_Color;
 final double Button_Height;
  final double Button_Width;
  final Function onPressed;
  const Button(this.Button_Text, this.Text_Size,this.Text_Color, this.Button_Color, this.Button_Height, this.Button_Width, this.onPressed, {super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(
      fixedSize: Size(Button_Width, Button_Height),
      backgroundColor: Button_Color
    ),onPressed: () {
      onPressed();
    }, child: Text(Button_Text , style: TextStyle(
      fontSize: Text_Size,
      color: Text_Color
    )));
  }
  
}