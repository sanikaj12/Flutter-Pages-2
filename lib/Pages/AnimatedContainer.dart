import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  @override
  _AnimationScreenState createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  double _containerWidth = 150;
  double _containerHeight = 150;

  void _toggleSize() {
    setState(()
    {
      if (_containerWidth == 150)
      {
        _containerWidth = 300;
        _containerHeight = 300;
      }
      else
      {
        _containerWidth = 150;
        _containerHeight = 150;
      }
    }
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container' ,style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleSize,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            width: _containerWidth,
            height: _containerHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Images/Image1.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(75),
              border: Border.all(
                color: Colors.black,
                width: 5.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
