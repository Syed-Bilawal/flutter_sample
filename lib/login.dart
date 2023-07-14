import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
  TextEditingController abc = TextEditingController();
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
                        onChanged:(value) => email = emailC.text,
                        decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'email',

                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        
                        ),keyboardType: TextInputType.emailAddress,
                        
                      
                    ),
                    const SizedBox(
                      height: 30,
                    ),TextField(
                      controller: abc,
                        obscureText: true,
                        decoration: InputDecoration(fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: 'password',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                      ),
                    SizedBox(
                      height: 20,
                    ),
                    
                    SizedBox(
                      width: 500,
                      child: Row(

                        
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [ ElevatedButton(onPressed: (){      

                          if (emailC.text != '' || abc.text != '' ) {
                            if(emailC.text.isEmail){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=> MyDashboard(email: emailC.text)));

                            }
                            else{
                              print('Please enter valid email');
                            }
                            
                            
                          }
                          else{print("please enter email"); }
                          
                        }, child:  Text('Sign in',style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                        fontWeight: FontWeight.w700),
                         )   ),                      
                        
                            CircleAvatar(
                          radius: 25,
                          backgroundColor: Color.fromARGB(255, 29, 29, 29),
                          child: IconButton(
                            onPressed: (){
                              emailC.clear();},
                            icon: Icon(Icons.remove),                               
                            ),                        
                            ),
                            CircleAvatar(
                          radius: 25,
                          backgroundColor: Color.fromARGB(255, 27, 27, 27),
                          child: IconButton(
                            onPressed: (){
                              print(emailC.text);
                              },
                            icon: Icon(Icons.print),                               
                            ),                        
                            ),

                            CircleAvatar(
                          radius: 25,
                          backgroundColor: Color.fromARGB(255, 27, 27, 27),
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
                      height: 20,
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