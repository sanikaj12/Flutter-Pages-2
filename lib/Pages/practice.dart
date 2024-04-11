import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: _buildRhombusContainer(),
        title: Text(
          "Tour Company Name",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(), // Add your body content here
    );
  }

  Widget _buildRhombusContainer() {
    return Container(
      width: 50,
      height: 50,
      color: Colors.black,
      child: Transform.rotate(
        angle: 45 * 3.14159 / 180,
        child: Container(
          color: Colors.white,
        ),
      ),
    );
  }
}
