import 'package:flutter/material.dart';
import 'package:unity_world/pages/Welcome/login_page.dart';

class ContinuePage extends StatelessWidget {
  const ContinuePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const Padding(
            padding: 
              EdgeInsets.fromLTRB(40, 0, 0 ,0),
            child: 
              Align(
                alignment: Alignment.topLeft,
                child: 
                  Text(
                    "Continue As......",
                  style: 
                    TextStyle(
                      color: Color.fromRGBO(30, 144, 255, 1.0),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ),

          Image.asset(
            'assets/illustrations/user.png',
              height: 170,
              width: 500,
          ),

          Padding(
            padding: 
              const EdgeInsets.all(8.0),
            child: 
              Align(
                alignment: Alignment.center,
                child: 
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        )
                      );
                      print(
                        'Login as a User'
                      );
                    }, 
                    style: 
                      ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(15, 26, 88, 1.0),
                        fixedSize: const Size(300, 5),
                        shape: const RoundedRectangleBorder(),
                    ),
                    child: 
                      const Text(
                        "A User",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                    )
                )
            ),
          ),

          Image.asset(
            'assets/illustrations/admin.png',
              height: 170,
              width: 500,
          ),

          Padding(
            padding: 
              const EdgeInsets.all(8.0),
            child: 
              Align(
                alignment: Alignment.center,
                child: 
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                      );
                      print(
                        'Login as an Admin'
                      );
                    },
                    style: 
                      ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(15, 26, 88, 1.0),
                        fixedSize: const Size(300, 5),
                        shape: const RoundedRectangleBorder(),
                    ), 
                    child: 
                      const Text(
                        "An Administrator",
                          style: 
                            TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                          ),
                    ),
              ),
            ),
          ),

        ],

      ),
    );
  }

}