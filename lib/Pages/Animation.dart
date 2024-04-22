import 'package:flutter/material.dart';

class AnimationState extends StatefulWidget {
  @override
  _AnimationState createState() => _AnimationState();
}

class _AnimationState extends State<AnimationState> {
  bool _isEnlarged = false;

  void _toggleEnlargement() {
    setState(() {
      _isEnlarged = !_isEnlarged;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleEnlargement,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: _isEnlarged ? 200 : 150,
            height: _isEnlarged ? 200 : 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Images/img.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(_isEnlarged ? 100 : 75),
              border: Border.all(
                color: Colors.blue,
                width: _isEnlarged ? 8.0 : 5.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
