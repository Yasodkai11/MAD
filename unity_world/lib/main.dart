import 'package:flutter/material.dart';
import 'package:unity_world/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
      
      title: '',
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}