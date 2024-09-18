import 'package:flutter/material.dart';

class Dots extends StatelessWidget{
  final int Active;
  const Dots(this.Active, {super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(10, (index) {
        if(index == Active)
        {
          return const Padding(
            padding: EdgeInsets.all(4.0),
            child:  Dot(true),
          );
        }
        return const Padding(
          padding: EdgeInsets.all(4.0),
          child: Dot(false),
        );
      }),
    );
  }
}

class Dot extends StatelessWidget{
  final bool Active;
  const Dot(this.Active, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(border: Border.all(color: Active ? const Color.fromARGB(255,35, 23, 73): const Color.fromARGB(255,221, 221, 221,),width: 1),borderRadius: const BorderRadius.all(Radius.circular(10))),
    );
  }
}