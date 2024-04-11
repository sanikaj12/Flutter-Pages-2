import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text("KITCOEK",style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),),
          centerTitle: true,
            //leading : IconButton(onPressed:(){}, icon: Icon(Icons.account_circle), tooltip: 'Menu',),
        ),
        body: Container(
          alignment: Alignment.center,
          height: 500,
          width: 500,
          padding: EdgeInsets.all(20),
          child: Card(
            shadowColor: Colors.lightBlueAccent,
            elevation: 10,
            semanticContainer: true,
            child: Padding(padding: const EdgeInsets.all(8),
            child : Column(
              children: [
                const ListTile(

                  leading: Icon(Icons.account_circle, size: 60,),
                  title: Text("Account information", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                  subtitle: Text("Student at KIT's College", style: TextStyle(fontSize:15),),

                ),
                SizedBox(
                  height: 10,
                ),
               Container(
                 alignment: Alignment.center,
                 child: ElevatedButton(
                   onPressed: (){},
                   child: Text("Register",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                   style: ElevatedButton.styleFrom( padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                   shape : RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),),
                   ),
                 ),
                Container(
                  child: Column(
                    children: [
                      Text("Welcome in KIT", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),),
                      SizedBox(height: 6,),
                      Text("KIT College of Engineering, Kolhapur is one of the well-known institutes which was established in the year 1983 and is located in Kolhapur, Maharashtra. The institute offers various Degree courses including UG and PG programs. Programs are offered in Full-Time mode, and are delivered by highly experienced faculty. Students can pursue education in multiple courses like B.E. / B.Tech, M.E./M.Tech in the stream of Engineering.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontWeight: FontWeight.normal,)),
                      TextButton(onPressed: (){}, child: Text("Learn More")),
                    ],
                  ),
                )
              ],
            )
          ),
        ),
      ),
      );
  }
}