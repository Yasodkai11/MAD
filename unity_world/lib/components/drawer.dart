import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required Container child 
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      
      child: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: [

            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(15, 26, 88, 1.0),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),

              child: Column(
                children: [
                  Image.asset(
                    'assets/image/logo1.png',
                    width: size.width * 0.5,
                    height: size.height * 0.12,
                  ),

                  Text(
                    "YASHOD SILVA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ),

            
          ],
        ),
      )
    );
  }
  
}