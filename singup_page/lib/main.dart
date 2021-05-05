import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:singup_page/signup.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(  
        fontFamily: "Nunito" 
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: WelcomeScreen(),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
        return Scaffold(
      resizeToAvoidBottomInset: false,
       body: Column(
            children: <Widget>[
              AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(
            milliseconds: 1000
          ),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                 
                },
                child: Container(
                  child: Column(
                    children: <Widget>[
                      AnimatedContainer(
                        curve: Curves.fastLinearToSlowEaseIn,
                        duration: Duration(
                          milliseconds: 1000
                        ),
                        margin: EdgeInsets.only(
                          top: 80,
                        ),
                        child: Text(
                          "Hello Stanger",
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontSize: 25
                          ),
                        ),
                      ),
                
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 32
                ),
                child: Center(
                  child: Image.asset("assets/images/bg.png"),
                ),
              ),
                Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20
                        ),
                        child:  Text(
                          "Claim your \nReward",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontSize: 32
                          ),
                        ),
                        ),
                    
                    Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20
                        ),
                        child: Text(
                          "Lorem ipsum dolar sit amet, \n consectetur adipiscing elit, sed \ndo eiumsmed tempor incididunt",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blue[900],
                            fontSize: 14
                          ),
                        ),
                      ),
                      SizedBox(
                height: 20,
              ),
              Container(
                child: GestureDetector(
                   child: ButtonTheme(
                    minWidth: 300.0,
                    height: 60.0,
                    buttonColor: Colors.blue[600],

                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => signup()));
                      },
                      child: Text(
                        'SignUp Now',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    )),
              
                  
                ),
              )
            ],
          )
        ),
            ])
        );
   }
}