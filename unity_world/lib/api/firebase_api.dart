import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:unity_world/main.dart';

Future<void> handleBackgroundMessage(RemoteMessage meesage) async{
var message;
print('Title: ${message.notification?.title}');
print('Body: ${message.notification?.body}');
print('Payload: ${message.data}');
}
class FirebaseApi {
  //firebase messaging instance
  final _firebaseMessaging = FirebaseMessaging.instance;

  //fuction to initialize notification
  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();

    final fCMToken = await _firebaseMessaging.getToken();

    print("Token: $fCMToken");

    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);

  }
}