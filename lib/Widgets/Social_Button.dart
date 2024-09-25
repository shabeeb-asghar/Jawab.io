import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final Function onPressed;

  const SocialButton({Key? key, required this.iconPath , required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(onPressed: () {
      onPressed();
    } ,
    style:const ButtonStyle(
      fixedSize: WidgetStatePropertyAll(Size(80, 35)),
          side: WidgetStatePropertyAll(
      BorderSide(
        color: Color.fromARGB(255, 238, 238, 238),
        width: 2,
      ),
    ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),
        )
      )
    ),icon: Image.asset(iconPath,
    height: 30,
    width: 30,));
  }
}