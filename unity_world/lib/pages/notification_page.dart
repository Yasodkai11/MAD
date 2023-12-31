import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:unity_world/components/back_notifi_account.dart';

import 'HomePage/home_page.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    if (arguments is RemoteMessage) {
      final message = arguments;

      return Scaffold(
        appBar: BackAppBar(
          IconButton(

              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomePage()
                  )
                );
              }, 

              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,

              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
              color: Colors.black,

            ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  message.notification?.title ?? '',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  message.notification?.body ?? '',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        appBar: BackAppBar(IconButton(

              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomePage()
                  )
                );
              }, 

              //tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,

              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
              color: Colors.black,

            ),),
        body: Center(
          child: Text('No Notification'),
        ),
      );
    }
  }
}

 