import 'package:flutter/material.dart';

final List<Map> details = [

   {
    "name": "Sharmilan",
    "email": "ssharmilan15@gmail.com",
    "image": "assets/images/bg.png",

  },  {
    "name": "Sriram",
    "email": "Sri@email.com",
    "image": "assets/images/bg.png",

  },  {
    "name": "Chumugan",
    "email": "Chumugan@email.com",
    "image": "assets/images/bg.png",

  },  {
    "name": "Bagavan",
    "email": "Bagav@email.com",
    "image": "assets/images/bg.png",

  },  {
    "name": "Kithusshand",
    "email": "kithu@email.com",
    "image": "assets/images/bg.png",

  },
];

class profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return SingleChildScrollView(
     child:  Expanded(
       child:ListView.builder(
         shrinkWrap: true,
      itemCount: details.length,
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
                    image: ExactAssetImage(details[index]['image']),
                  )
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width-140,
                    child: Text(details[index]['name'],style: TextStyle(fontSize: 17),)),
                  SizedBox(height: 10,),
                  Text(details[index]['email'],style: TextStyle(color: Colors.grey),)
                ],
              )
            ],
          ),
        ),
      ),
    
    );
      }
   )));
     
}

  }