import 'package:flutter/material.dart';
import 'package:unity_world/components/background.dart';
// ignore: unused_import
import 'package:unity_world/pages/Welcome/continue_page.dart';
import 'package:unity_world/pages/Welcome/login_page.dart';

// ignore: unused_import
import '../Department/Dep_Head/mis_head.dart';


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

              const Expanded(
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

              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 10, 60),
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => LoginPage()
                        )
                      );
                    }, 
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 50),
                      backgroundColor: Color.fromRGBO(15, 26, 88, 1.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22),
                      ),
                    ),
                    child: const Text(
                      "Start",
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
          
        ],
      ),
    );
    
  }

}

