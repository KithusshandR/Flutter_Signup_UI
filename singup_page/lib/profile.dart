import 'package:flutter/material.dart';

class profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return ListView.builder(
      itemCount: 3,
      itemBuilder: (context,index){
   
    return  Card(
      elevation: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xff4f359b),
                  borderRadius: BorderRadius.circular(60/2),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: ExactAssetImage("assets/images/bg.png"),
                  )
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width-140,
                    child: Text("Pradip Debnath",style: TextStyle(fontSize: 17),)),
                  SizedBox(height: 10,),
                  Text("itzprradip@gmail.co",style: TextStyle(color: Colors.grey),)
                ],
              )
            ],
          ),
        ),
      ),
    
    );
      }
   );
     
}

  }