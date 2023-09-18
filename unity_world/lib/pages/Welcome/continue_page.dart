import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SvgPicture.asset(
                'assets/illustrations/continue.svg',
                height: size.height * 0.4,
              ),

              Align(
                alignment: Alignment.bottomCenter,

                child: Padding(
                  padding: EdgeInsets.only(top: 200),
                  
                ),
              )
            ],
          )
        ]
      )
    );
 } 
 
}

























































   
