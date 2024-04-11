import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget
{
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget>
{
  String enteredText = '';

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
              Colors.blue.shade50,
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 50,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(25),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        enteredText = text;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter Text",
                      labelText: "Name",
                      hintStyle: TextStyle(color: Colors.blue.shade700),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Something Wrong"),
                            content: Text(enteredText),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text("Close"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text("LOGIN", style: TextStyle(color: Colors.blue),),
                    style:ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

