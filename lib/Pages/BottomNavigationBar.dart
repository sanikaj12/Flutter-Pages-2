import 'package:flutter/material.dart';

//Bottom Navigation Bar with AppBar
class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is appBar of the Page"),
        backgroundColor: Colors.blue.shade50,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text('Index $_selectedIndex', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
          backgroundColor: Colors.blue.shade50,
          elevation: 4,
          items:[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
              ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.more),
                label: "More",
            )
          ]
      ),
    );
  }
}

//Bottom Navigation Bar without AppBar
// import 'package:flutter/material.dart';
//
// class BottomNavigator extends StatefulWidget {
//   const BottomNavigator({super.key});
//
//   @override
//   State<BottomNavigator> createState() => _BottomNavigatorState();
// }
//
// class _BottomNavigatorState extends State<BottomNavigator> {
//   int _selectedIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         alignment: Alignment.center,
//         child: Text('Index $_selectedIndex', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _selectedIndex,
//           onTap: _onItemTapped,
//           backgroundColor: Colors.blue.shade50,
//           elevation: 4,
//           items:[
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.settings),
//               label: "Settings",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.more),
//               label: "More",
//             )
//           ]
//       ),
//     );
//   }
// }