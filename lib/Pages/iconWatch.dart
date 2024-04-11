import 'package:flutter/material.dart';

class iconWatch extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
        color: Colors.white70,

        child: SingleChildScrollView(
          child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 250,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                              child:CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                NetworkImage("https://imgs.search.brave.com/2VVF3SdJfnPzsjEVyvHpRVwYDV7XAgxn0TxAg9a1O0g/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4u/dmVjdG9yc3RvY2su/Y29tL2kvcHJldmll/dy0xeC8yMS80NC9w/cm9maWxlLXBpY3R1/cmUtd2hpdC10aWUt/dW5rbm93bi1wZXJz/b24tdmVjdG9yLTMz/NTIxNDQuanBn"),
                                backgroundColor: Colors.transparent,
                              )

                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Text("Hello", style: TextStyle(color: Colors.grey, fontSize: 10),),
                              ),
                              Padding(padding: EdgeInsets.fromLTRB(0, 2, 0, 0),
                                child: Text("KITCOEK", style: TextStyle(color: Colors.black),),
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Icon(Icons.notifications_active),
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("Images/watch.jpg",height: 300,width: 300,),
                    Container(
                        height: 500,
                        width: double.infinity,
                        alignment: Alignment.center,
                      color: Color.fromARGB(100, 22, 44, 33),
                      child: Text(''),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _IconContainer(Icons.earbuds_battery, "Battery"),
                        _IconContainer(Icons.camera_alt, "Camera"),
                        _IconContainer(Icons.perm_media_sharp, "Media"),
                      ],
                    ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _IconContainer(Icons.bluetooth_audio_rounded, "Bluetooth"),
                    _IconContainer(Icons.wifi, "Wi-Fi"),
                    _IconContainer(Icons.call, "Call"),
                  ],
                ),
                SizedBox(height: 20,)
              ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.perm_media_sharp), label: "Gallary"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
        ],
      ),
    );
  }
}

Widget _IconContainer(IconData icon, String name)
{
  return Column(
    children: [
      Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[200],
        ),
        child: Icon(icon),
      ),
      SizedBox(height: 5,),
      Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
    ],
  );
}