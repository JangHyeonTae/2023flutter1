import 'package:ch09/DmiMain.dart';
import 'package:ch09/DmiResult.dart';
import 'package:ch09/MyCustomForm.dart';
import 'package:ch09/MyForm.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   //title: 'Flutter Demo',
   //theme: ThemeData(
   //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
   //  useMaterial3: true,

   //  primarySwatch: Colors.blue,
   //),
   ////home: const MyCustomForm(),
   //home: Scaffold(
   //  title:
   //),Scaffold
      //home: DmiMain(),
      home: DmiResult(height: 1.0,weight: 2.0),
    );
  }
}

