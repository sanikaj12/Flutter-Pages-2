import 'package:flutter/material.dart';

class BeautyMaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.yellow.shade700,
                child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(80),
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 50),

                  child: Image.asset(
                    "Images/Image1.jpg",
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade700,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      Text(
                        "Beauty Master",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 45,
                          fontFamily: 'Fontmain',
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Book Your Favourite Stylist now",
                        style: TextStyle(
                          color: Colors.pinkAccent.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 35),
                      Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 60,
                              vertical: 15,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 16,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
