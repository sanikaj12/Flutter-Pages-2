import 'package:flutter/material.dart';
import 'package:sanika/Pages/BottomNavigationBar.dart';
import 'Pages/Snackbar_and_AlertDialog.dart';

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
      home:  BottomNavigator(),
    );
  }
}