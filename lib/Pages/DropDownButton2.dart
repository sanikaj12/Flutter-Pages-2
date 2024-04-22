import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String? _selectedState;

  List<String> _statesList = [
    'Andhra Pradesh',
    'Arunachal Pradesh',
    'Assam',
    'Bihar',
    'Chhattisgarh',
    'Goa',
    'Gujarat',
    'Haryana',
    'Himachal Pradesh',
    'Jharkhand',
    'Karnataka',
    'Kerala',
    'Madhya Pradesh',
    'Maharashtra',
    'Manipur',
    'Meghalaya',
    'Mizoram',
    'Nagaland',
    'Odisha',
    'Punjab',
    'Rajasthan',
    'Sikkim',
    'Tamil Nadu',
    'Telangana',
    'Tripura',
    'Uttar Pradesh',
    'Uttarakhand',
    'West Bengal'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              hint: Text('Select your state'),
              value: _selectedState,
              onChanged: (newValue) {
                setState(() {
                  _selectedState = newValue!;
                });
              },
              items: _statesList.map((state) {
                return DropdownMenuItem(
                  value: state,
                  child: Text(state),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              _selectedState != null ? 'Selected State is: $_selectedState' : 'No state selected',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
