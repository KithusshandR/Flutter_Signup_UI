

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:singup_page/HomePage.dart';
import 'package:singup_page/main.dart';


class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
      body:  Column(
        
            children: <Widget>[
              
              SizedBox(
                height: 100,
              ),

                   Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.symmetric(
                          horizontal: 20
                        ),
                        child:  Text(
                          "We'll just need some \ndetails from you",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.indigo[900],
                            fontSize: 30
                          ),
                        ),
                   ),
              SizedBox(
                height: 65,
              ),
              Container(              
                  width: 350.0,
             child: TextField(
                
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Your Name",
                            filled: true,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              fillColor: Colors.grey.withOpacity(.1),
                    ),
                  ),),
              SizedBox(
                height: 20,
              ),
                  Container(              
                  width: 350.0,
             child: TextField(
                
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Your Email",
                            filled: true,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
             fillColor: Colors.grey.withOpacity(.1),
                    ),
                  ),),
              SizedBox(
                height: 20,
              ),
                  Container(              
                  width: 350.0,
             child: TextField(
                
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,//this has no effect
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      hintText: "Your Phone Number",
                            filled: true,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              fillColor: Colors.grey.withOpacity(.1),
                    ),
                  ),),
            
              SizedBox(
                height: 150,
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
                          MaterialPageRoute(builder: (ctx) => HomePage()));
                      },
                      child: Text(
                        'Next Step',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    )),
              
                  
                ),
              ),
              SizedBox(
                height: 10,
              ),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already Have an Accout ?",
                    style: TextStyle(color: Colors.indigo[900]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => WelcomeScreen()));
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue[600]),
                    ),
                  ),
                    SizedBox(height: 60),
                ],
              ),
             
             
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Already Have an Accout ?",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                   
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  
                ],
              )
            ],
          ),
       );
  }
  
}

