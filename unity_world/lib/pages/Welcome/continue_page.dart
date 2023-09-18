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

                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => LoginPage()
                        )
                      );
                      print(
                        'Login as a User'
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(15, 26, 88, 1.0),
                      fixedSize: Size(
                        180, 
                        40,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ), 
                    child: Text(
                      "USER",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),

                ),
              )
            ],

          )
        ]
      )
      
    );
 } 
 
}

























































   
