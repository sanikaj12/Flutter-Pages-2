import 'package:flutter/material.dart';
import 'package:sanika/Pages/CardWidget.dart';
import 'package:sanika/Pages/BeautyMaster.dart';
import 'package:sanika/Pages/Dialog_Box.dart';
import 'package:sanika/Pages/DropDownButton.dart';
import 'package:sanika/Pages/Login_TextField.dart';
import 'package:sanika/Pages/TextField.dart';
import 'package:sanika/Pages/TextFieldDemo.dart';
import 'package:sanika/Pages/iconWatch.dart';

import 'Pages/BeautyMaster.dart';
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
      home:  TextFieldDemo(),
    );
  }
}