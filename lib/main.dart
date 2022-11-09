import 'package:flutter/material.dart';
import 'package:maytinh/buttonapp.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: DemoMayTinh(),
      debugShowCheckedModeBanner: false,
    );
  }
}

