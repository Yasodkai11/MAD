import 'package:flutter/material.dart';
//import 'package:unity_world/pages/Profile/user_profile.dart';
//import 'package:unity_world/pages/notification_page.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key, required Text title});

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

        backgroundColor: Colors.white,
        actions: [
          IconButton(

              onPressed: () {}, 
              icon: 
                Icon(
                  Icons.notifications_active_outlined
                ),
                color: Colors.black,
            ),


            IconButton(

              onPressed: () {}, 
              icon: 
                Icon(
                  Icons.person
                ),
                color: Colors.black,
            ),

        ],

    );
  }
  
  @override
  // TODO: implement preferredSize
  
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}