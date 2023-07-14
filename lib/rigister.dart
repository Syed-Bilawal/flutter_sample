import 'package:flutter/material.dart';
import 'package:my_app/dashboard.dart';
import 'package:my_app/login.dart';

class MySign extends StatefulWidget {
  const MySign({super.key});

  @override
  State<MySign> createState() => _MySignState();
}

class _MySignState extends State<MySign> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Welcome to the Sign up screen'),),
      body: SafeArea(
        child : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextField(
            onChanged: (value) => email = email,
             decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Please enter your email',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))

 
          )
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
             decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Enter your Username',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))


          )
          ),
          SizedBox(
            height: 30,

          ),
          TextField(
             decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'Please enter Password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
          )
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: (){
                
                Navigator.push(context, MaterialPageRoute(builder: (context)=> MyDashboard(email: email)));
              }, child: Text('Sign up' ,style: TextStyle( color: Colors.black, fontSize : 18),)
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyLogin()),);
              }, child: Text('already have acount!' , style: TextStyle(fontSize: 15),))
            ],

          )
        ]
        )
        ),

    )
    );
  }
}