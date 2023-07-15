import 'package:flutter/material.dart';
import 'package:my_app/dashboard.dart';
import 'package:my_app/login.dart';
import 'package:get/get.dart';

class MySign extends StatefulWidget {
  const MySign({super.key});

  @override
  State<MySign> createState() => _MySignState();
}

class _MySignState extends State<MySign> {
  String email = '';
  TextEditingController emailC = TextEditingController();
  TextEditingController abc = TextEditingController();
  TextEditingController user = TextEditingController();

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
            controller: emailC,
            onChanged: (value) => email = emailC.text,
             decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        icon: Icon(Icons.email),
                        hintText: 'Please enter your email',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))

 
          )
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: user,
             decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        icon: Icon(Icons.person),
                        hintText: 'Enter your Username',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))


          )
          ),
          SizedBox(
            height: 30,

          ),
          TextField(
            controller: abc,
             decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        icon: Icon(Icons.password),
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
                if (emailC.text != '' && abc.text != '' && user.text != '' ) {
                            if(emailC.text.isEmail){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyDashboard(email: email)));

                              }
                            else{
                              print('Please enter valid email first');
                            }                                   
                          }
                          else{print("please enter email"); }
                          
                
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