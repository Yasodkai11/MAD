import 'package:flutter/material.dart';

import 'package:unity_world/pages/Welcome/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomePage(),
      title: 'Unity World',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,

    );
  }
}