import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  @override
  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  TextEditingController _textEditingController = TextEditingController();
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFieldDemo') ,
        backgroundColor: Colors.cyan.shade200,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name of the Student',
                hintText: 'Enter your name',
                suffixIcon: Icon(Icons.search),
                prefixIcon: Icon(Icons.person_2),
                helperText: 'Helper',
              ),
              onChanged: (value) {
                setState(() {
                  _inputText = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              'Input Text: $_inputText',
              style: TextStyle(fontSize: 14,),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _textEditingController.clear();
                setState(() {
                  _inputText = '';
                });
              },
              child: Text('Tap to Clear TextField', style: TextStyle(color: Colors.cyan,),),
            ),
          ],
        ),
      ),
    );
  }
}
