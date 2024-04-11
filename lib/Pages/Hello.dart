import 'package:flutter/material.dart';

class Nextpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue.shade600,
              Colors.blue.shade300,
              Colors.blue.shade100,
            ],
          ),
        ),
        child: Text(
          "HELLO",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40, color: Colors.purple),
        ),
      ),
    );
  }
}
