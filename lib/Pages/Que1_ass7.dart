import 'package:flutter/material.dart';
import 'package:sanika/Pages/Circle.dart';

class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Circle Widget and Text "Your Name Destination"
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomPaint(
                      size: Size(70, 25),
                      painter: DrawCircle(),
                    ),
                    SizedBox(width: 10), // Spacer between circle and text
                    // Text Widget
                    Text(
                      "Your Name \n Destination",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Spacer between rows
                // Image Widget and Text "Source City"
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset("Images/Image_1.jpg"),
                    ),
                    SizedBox(width: 60), // Spacer between image and text
                    // Text Widget
                    Text(
                      "KITCOEK, Kolhapur",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                        height: 60,
                      child: Image.asset("Images/Image_2.jpg"),
                    ),
                    SizedBox(width: 70,),
                    Text("Vehical accident", style: TextStyle(fontSize: 15),)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset("Images/Image_3.jpg"),
                    ),
                    SizedBox(width: 40,),
                    Text("sanika12@gmail.com",style: TextStyle(fontSize: 15),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset("Images/Image_4.jpg"),
                    ),
                    SizedBox(width: 50,),
                    Text(" xxxxx  xxxxx",style: TextStyle(fontSize: 20),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.deepPurpleAccent;
    canvas.drawCircle(Offset(0, 0.0), 50, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)
  {//false : paint call might be optimized away.
    return false;
  }
}