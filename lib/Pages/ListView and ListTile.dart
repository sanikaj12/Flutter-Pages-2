import 'package:flutter/material.dart';
class ContactList extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(
      name: 'John',
      number: '12345 67890',
      imageUrl: 'Images/john.jpg',
    ),
    Contact(
      name: 'Jane',
      number: '98765 43210',
      imageUrl: 'Images/jane.jpg',
    ),
    Contact(
      name: 'Michael',
      number: '56789 01234',
      imageUrl: 'Images/michael.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.cyan,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
              child :ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(contacts[index].imageUrl),
                ),
                title: Text(contacts[index].name),
                subtitle: Text(contacts[index].number),
                trailing: IconButton(
                  icon: Icon(Icons.call),
                  onPressed: () {
                    // Add call functionality here
                    print('Calling ${contacts[index].name}');
                  },
                ),
              ),
          );
        },
      ),
    );
  }
}

class Contact {
  final String name;
  final String number;
  final String imageUrl;

  Contact({required this.name, required this.number, required this.imageUrl});
}
