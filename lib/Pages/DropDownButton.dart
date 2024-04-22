import 'package:flutter/material.dart';


class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  _DropDownButton createState() => _DropDownButton();
}

class _DropDownButton extends State<DropDownButton> {

  // Initial Selected Value
  String dropdownvalue = 'India';

  // List of items in our dropdown menu
  var countries = [
    'India', 'America', 'Africa', 'Japan'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDownButton"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(

              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.arrow_downward_rounded),

              items: countries.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}