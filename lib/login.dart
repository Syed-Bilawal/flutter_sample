import 'package:flutter/material.dart';
import 'package:my_app/dashboard.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(left: 35, top: 130),
                child: Text('', style: TextStyle(color: Colors.white, fontSize: 33
                  ),),
              ),
            ),
            Center(
              child: Container(
               
                child: Column(
                  children: [
                    TextField(
                    
                      onChanged:(value) => email = value,
                      decoration: InputDecoration(fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'email',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Sign in',style: TextStyle(
                        color: Color(0xff4c505b),
                        fontSize: 27,
                      fontWeight: FontWeight.w700),
                      ),
                    
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff4c505b),
                        child: IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyDashboard(email: email)));},
                          icon: Icon(Icons.arrow_forward),
                              
                          ),
                        
                          
                        
                      )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),


    );

  }
}