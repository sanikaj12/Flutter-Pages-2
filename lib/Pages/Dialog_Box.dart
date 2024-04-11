import 'package:flutter/material.dart';

class Dialogbox extends StatefulWidget {
  const Dialogbox({super.key});

  @override
  State<Dialogbox> createState() => _DialogboxState();
}

class _DialogboxState extends State<Dialogbox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box"),
        backgroundColor: Colors.cyan.shade100,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(context: context, builder: (builder) => AlertDialog(
              title: Text("This is Alert Box"),
              content: Text("This is message for user."),
              actions: [
                TextButton(onPressed: (){ Navigator.of(builder).pop();},
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Text("Close"),
                    ))
              ],
            )
            );
          },
          child: Text("Click Dialog Box"),
        ),
      ),
    );
  }
}
