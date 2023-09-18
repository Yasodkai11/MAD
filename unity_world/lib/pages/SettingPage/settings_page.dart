import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:unity_world/components/back_notifi_account.dart';
import 'package:unity_world/components/drawer.dart';


class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}


class _HelpCenterState extends State<HelpCenter> {
 


void showAlert(){
  QuickAlert.show(
    context: context, 
    type: QuickAlertType.success
  );
}

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(),
          drawer: MyDrawer(
        child: Container(
      ),


          ),

































































































































































































       );
   }                    
   }