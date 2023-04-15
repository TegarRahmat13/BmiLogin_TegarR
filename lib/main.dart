import 'dart:math';

import 'package:flutter/material.dart';
import 'package:regisloginbmitegar/bmi.dart';
import 'package:regisloginbmitegar/login.dart';
import 'package:regisloginbmitegar/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoginRegisBmi',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home:Login(),
      routes:{
        Login.namarute :(context) => Login(),
        Register.namarute :(context) => Register(),
        Bmi.namarute :(context) => Bmi()
      },
    );
  }
}

