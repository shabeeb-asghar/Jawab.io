  import 'package:flutter/material.dart';
import 'package:jawab_io/screens/welcome_screen.dart';

void Press_Skip_Button(BuildContext context)
{
    Navigator.push(context, MaterialPageRoute(builder: (context) => const WelcomeScreen()));

}