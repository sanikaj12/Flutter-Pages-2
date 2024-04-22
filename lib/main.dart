import 'package:flutter/material.dart';
import 'package:sanika/Pages/DropDownButton2.dart';
import 'package:sanika/Pages/ListView%20and%20ListTile.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home:  ContactList(),
    );
  }
}