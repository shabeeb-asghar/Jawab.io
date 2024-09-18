import 'package:flutter/material.dart';

class Image_Container_Dynamic extends StatelessWidget {
  final String Image_Path;
  final double Image_Height;
  final double Image_Width;
  final double X_Index_Image;
  final double Y_Index_Image;
  final double Y_Index_Shadow;
  final double X_Index_Shadow;
  final double Container_Height;
  final double Container_Width;

  const Image_Container_Dynamic({
    required this.Image_Path,
    this.Image_Width = 200,
    this.Image_Height = 230,
    this.X_Index_Image = 50,
    this.Y_Index_Image = 20,
    this.X_Index_Shadow = 108,
    this.Y_Index_Shadow = 20,
    this.Container_Height = 329,
    this.Container_Width = 329,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Container_Height,
      width: Container_Width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(200)),
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 90, 57, 86),
          Color.fromARGB(255, 35, 23, 73)
        ], begin: Alignment.topLeft),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Y_Index_Image,
          ),
          Row(
            children: [
              SizedBox(width: X_Index_Image),
              SizedBox(
                width: Image_Width,
                height: Image_Height,
                child: Image.asset(Image_Path),
              ),
            ],
          ),
          // Removed the shadow part
        ],
      ),
    );
  }
}
