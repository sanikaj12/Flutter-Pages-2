import 'package:flutter/material.dart';
import 'package:sanika/Pages/Hello.dart';
import 'package:sanika/main.dart';

final String fixedusername = "admin";
final String fixedpassword = "password";
class LoginPage extends StatefulWidget {
  @override
  _loginpage createState() => _loginpage();
}
class _loginpage extends State<LoginPage>
{
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  void login(BuildContext context, String enteredusername, String enteredpassword)
  {
    //if(enteredpassword.isNotEmpty && enteredusername.isNotEmpty) {
    if (enteredusername == fixedusername &&
        enteredpassword == fixedpassword) {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Nextpage()),);
    }
    else {
      showDialog(context: context, builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Something wrong"),
          content: Text("Invalid username or password"),
          actions: [
            TextButton(onPressed: () {
              Navigator.pop(context);
            },
              child: Text("OK"),)
          ],
        );
      }
      );
    }
    //}
  }
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          child: Column
            (
            children: [
              SizedBox(height:55,),
              Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Login",style: TextStyle(color: Colors.white,fontSize: 45),),
                    SizedBox(height: 5,),
                    Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 25),),
                  ],
                ),
              ),
              Container
                (
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.shade400,
                                blurRadius: 20,
                                offset: Offset(0,10),
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextField
                                (
                                controller: username,
                                decoration: InputDecoration(
                                  hintText: "Enter Username",
                                  labelText: "USERNAME",
                                  hintStyle: TextStyle(color: Colors.blueGrey.shade100),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                              ),
                              child: TextField
                                (
                                controller: password,
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  labelText: "PASSWORD",
                                  hintStyle: TextStyle(color: Colors.blueGrey.shade100),
                                  border: InputBorder.none,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context,MaterialPageRoute(builder: (context) => Nextpage())
                          );
                        },
                        child :Text("Forgot Password",style: TextStyle(color: Colors.grey),),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        alignment: Alignment.center,
                        child: ElevatedButton(
                          onPressed: (){
                            login(context, username.text, password.text);
                          },
                          child: Text("LOGIN", style: TextStyle(color: Colors.white),),
                          style:ElevatedButton.styleFrom( padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: Colors.blue.shade400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}