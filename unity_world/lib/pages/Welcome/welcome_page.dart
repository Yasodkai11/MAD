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

              Expanded(
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Image.asset(
                          'assets/icons/logo1.png',
                          height: 250,
                          width: 250,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      "WELCOME",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(15, 26, 88, 1.0),
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              
            ],
          )
        ],
      ),
    );
    
  }

}

