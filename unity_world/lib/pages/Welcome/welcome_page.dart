import 'package:flutter/material.dart';
import 'package:unity_world/components/background.dart';


class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Background(),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              
            ],
          )
        ],
      ),
    );
    
  }

}

