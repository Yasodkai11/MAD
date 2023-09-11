import 'package:flutter/material.dart';
import 'package:unity_world/pages/Welcome/continue_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [

          const Expanded(

            child: Center(
              child: Text(
                "WELCOME TO",
                style: TextStyle(
                  color: Color.fromRGBO(15, 26, 88, 1),
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ),

          Expanded(
            
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/icons/logo1.png',
                    height: 250,
                    width: 250,
                  ),
                ),
              ],
            ),

          ),

          Padding(
            padding: 
              const EdgeInsets.fromLTRB(0, 0, 10, 55),
            child: 
              Align(
                alignment: Alignment.bottomRight,

                child: 
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                          MaterialPageRoute(
                            builder: 
                              (context) => const ContinuePage())
                      );
                    }, 
                    child: 
                      const Icon(
                        Icons.navigate_next_rounded
                      ),
                  ),

              ),
          ),

        ],
      ),

    );
  }
}

