import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:unity_world/components/back_notifi_account.dart';
import 'package:unity_world/components/drawer.dart';


class SettingPage extends StatefulWidget {
  const SettingPage ({Key? key}) : super(key: key);

  @override
  State<SettingPage > createState() => _SettingPageState();
}


class _SettingPageState extends State<SettingPage > {
 


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