import 'package:flutter/material.dart';
import 'package:unity_world/components/back_notifi_account.dart';
import 'package:unity_world/components/drawer.dart';



class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}
class _NotificationPageState extends State<NotificationPage> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(),
        drawer: MyDrawer(
        child: Container(),
      



      

 ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
            child: Text(
              "Notification",
              style: TextStyle(
                color: Color.fromARGB(255, 30, 144, 255),
                fontSize: 32, 
                fontWeight: FontWeight.bold),
          
            ),
          
            ),]
        ),
      ),
    );
   }
}
     