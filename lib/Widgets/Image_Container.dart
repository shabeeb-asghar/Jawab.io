import 'package:flutter/material.dart';

class Image_Container extends StatelessWidget{
  final String Image_Path;
  final double Image_Height;
  final double Image_Width;
  final double X_Index_Image;
  final double Y_Index_Image;
  final double Y_Index_Shadow;
  final double X_Index_Shadow;
  const Image_Container({required this.Image_Path,this.Image_Width = 200,this.Image_Height = 230,this.X_Index_Image=50,this.Y_Index_Image = 20,this.X_Index_Shadow = 108,this.Y_Index_Shadow = 20,super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 329,
      width: 329,
      decoration: const BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 3,offset: Offset(0, 4) , color: Color.fromARGB(51, 0, 0, 0))],
         borderRadius: BorderRadius.all(Radius.circular(200)),
        gradient: LinearGradient(colors: [Color.fromARGB(255,90, 57, 86),Color.fromARGB(255,35, 23, 73)], begin: Alignment.topLeft 
      ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [          
          SizedBox(height: Y_Index_Image,),
          Row(
            children: [
              SizedBox(width: X_Index_Image),
              SizedBox(width: Image_Width, height: Image_Height, child: Image.asset(Image_Path),),
            ],
          ),
          SizedBox(height: Y_Index_Shadow),
           Row(
             children: [
              SizedBox(width: X_Index_Shadow,),
               CustomPaint(
                size: const Size(121, 11), // Adjust the size as per your image
                painter: EllipsePainter(),),
             ],
           )
        ],
      ),
    );
  }
}

class EllipsePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(104, 17,17,17) // Ellipse color (black in this case)
      ..style = PaintingStyle.fill; // Fill the ellipse

    // Define the rectangle boundary for the ellipse
    Rect rect = Rect.fromLTWH(0, size.height * 0.2, size.width, size.height * 0.6);

    // Draw the ellipse
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}