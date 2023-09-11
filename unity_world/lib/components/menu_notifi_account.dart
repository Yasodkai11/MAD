import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

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
                Icons.menu
              ),

              color: Colors.black,
              
            );
          }
          ) 
        ),

    );

  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}