import 'package:flutter/material.dart';
import 'package:my_app/dashboard.dart';
import 'package:my_app/rigister.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  String email = '';
  TextEditingController emailC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Center(
          
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                   TextField(
                      controller: emailC,
                        onChanged:(value) => email = value,
                        decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'email',

                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        
                        ),keyboardType: TextInputType.emailAddress,
                        
                      
                    ),
                    const SizedBox(
                      height: 30,
                    ),TextField(
                        obscureText: true,
                        decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                    
                    
                    SizedBox(
                      width: 400,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Sign in',style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 27,
                        fontWeight: FontWeight.w700),
                        ),                      
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> MyDashboard(email: emailC.text)));},
                            icon: Icon(Icons.arrow_forward),                               
                            ),                        
                            ),
                            CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            onPressed: (){
                              emailC.clear();},
                            icon: Icon(Icons.remove),                               
                            ),                        
                            ),
                            CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            onPressed: (){
                              print(emailC.text);
                              },
                            icon: Icon(Icons.delete),                               
                            ),                        
                            ),

                            CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            onPressed: (){
                              emailC.text = "Bilawal";},
                            icon: Icon(Icons.arrow_forward),                               
                            ),                        
                            ),
                        ],
                      ),                   
                    ),
                     SizedBox(
                      width: 200,
                      
                       child: Row(children: [
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MySign()));
                        }, child: Text('Sign up', style: TextStyle(
                          color: Color(0xff4c505b),
                          fontSize: 18),), 
                         )
                                         ],),
                     )
                  ],
                  
                ),
              ),
            
          
      
      ),


    );

  }
}