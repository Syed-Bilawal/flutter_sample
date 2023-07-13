import 'dart:js';

import 'package:flutter/material.dart';
import 'package:my_app/login.dart';
import 'package:my_app/rigistetr.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login' : (context) => MyLogin(),
      'rigistetr':(context) => MyRigister(),
    },
  ));
}