import 'package:flutter/material.dart';

class NewTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                width: 30,
                height: 30,
                color: Colors.black,
                child: Transform.rotate(
                  angle: 45 * 3.14159 / 180,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ),
                  Text(
                    "  Tour Company Name",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ],
              ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 160,
                      height: 75,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "India Tour",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: 160,
                      height: 75,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "World Tour",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: 160,
                      height: 75,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Speciality Tour",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: 160,
                      height: 75,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Economy Tour",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: 160,
                      height: 75,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Corparate Travel",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: 160,
                      height: 75,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Customized Tour",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: 160,
                      height: 75,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Cruises",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: 160,
                      height: 75,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Best deal of week",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                    Container(
                      width: 160,
                      height: 75,
                      color: Colors.black,
                      child: Center(
                        child: Text(
                          "Gift a Tour",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 6),
                  ],
                ),
                SizedBox(width: 6,),
                Container(
                  color: Colors.lightBlueAccent,
                  width: 228,
                  height: 750,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Europe",style: TextStyle(color: Colors.black,),textAlign: TextAlign.start,),
                      SizedBox(
                        height: 220,
                        width: 220,
                        child:
                        Image.asset("Images/img.png",fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 5,),
                      Text("Thailand",style: TextStyle(color: Colors.black,),textAlign: TextAlign.start,),
                      SizedBox(
                        height: 220,
                        width: 220,
                        child: Image.asset("Images/img_1.png",fit: BoxFit.cover,),
                      ),
                      SizedBox(height: 5,),
                      Text("Goa",style: TextStyle(color: Colors.black,),textAlign: TextAlign.start,),
                      SizedBox(
                        height: 220,
                        width: 220,
                        child: Image.asset("Images/img_2.png",fit: BoxFit.cover,),
                      )
                    ],
                  ),// Adjust height as needed
                   // Adjust color as needed
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}