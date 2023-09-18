import 'package:flutter/material.dart';
import 'package:unity_world/components/background.dart';
import 'package:unity_world/pages/Welcome/login_page.dart';

class ContinuePage extends StatelessWidget {
  const ContinuePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,

      body: Stack(
        children: [
          Background(),
        ]
      )
    );
 } 
 
}

























































   
