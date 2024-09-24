  import 'package:flutter/material.dart';
import 'package:jawab_io/screens/Welcome_Screen/welcome_screen.dart';

void Press_Skip_Button(BuildContext context)
{
    Navigator.push(context, PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation) => const WelcomeScreen()));

}

class Slide_Animation extends StatelessWidget{

final Animation<double> animation;
final Widget child;
const Slide_Animation(this.animation, this.child , {super.key});
  @override
  Widget build(BuildContext context) {
          const begin = Offset(1.0, 0.0); // From the right
      const end = Offset(0.0, 0.0);  // Ends at normal position
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
    return SlideTransition(position: animation.drive(tween),
    child: child,);
    
  }
}