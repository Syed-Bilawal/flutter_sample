

import 'package:flutter/material.dart';
import 'package:my_app/dashboard.dart';
import 'package:my_app/login.dart';


void main() {
  var email = '';
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context) => MyLogin(),
      'dashboard':(context) => MyDashboard(email: email),
    },
  ));
}