import 'package:flutter/material.dart';

class SnackBarDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar & AlertDialog Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show SnackBar
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('This is a SnackBar message'),
                action: SnackBarAction(
                  label: 'Learn More',
                  onPressed: () {
                    // Show AlertDialog
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Details'),
                          content: Text('This is a detailed message.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            );
          },
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
