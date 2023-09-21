import 'package:flutter/material.dart';
import 'package:unity_world/pages/Profile/user_profile.dart';
import 'package:unity_world/pages/notification_page.dart';

class BackAppBar extends StatelessWidget implements PreferredSizeWidget{
  const BackAppBar(IconButton iconButton, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(

      leading: Builder(
          builder: ((context) {

            return IconButton(

              onPressed: () {
                //Scaffold.of(context).openDrawer();
              }, 

              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,

              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
              color: Colors.black,

            );
          }
          ) 
        ),

        backgroundColor: Colors.white,
        actions: [

          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => const NotificationPage()
                  ),
                );
              }, 
              icon: 
                Icon(
                  Icons.notifications_active_outlined
                ),
                color: Colors.black,
          ),

            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => UserProfile()
                  ),
                );
              }, 
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