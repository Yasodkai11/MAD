import 'package:flutter/material.dart';
import 'package:unity_world/components/drawer.dart';
import 'package:unity_world/components/menu_notifi_account.dart';


class HomePage extends StatelessWidget {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Scaffold(
    
          appBar: MyAppBar(),
    
          drawer: MyDrawer(
            child: Container(),
          ),
          
          
        ),
      ],
    );
  }
}