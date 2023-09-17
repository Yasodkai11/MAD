import 'package:flutter/material.dart';

class BackAppBar extends StatelessWidget {
  const BackAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(

      leading: Builder(
          builder: ((context) {

            return IconButton(

              onPressed: () {
                Scaffold.of(context).openDrawer();
              }, 

              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,

              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
              color: Colors.black,

            );
          }
          ) 
        ),

        
    );
  }
}