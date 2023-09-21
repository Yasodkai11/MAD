import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:unity_world/api/firebase_api.dart';

import 'package:unity_world/pages/Welcome/welcome_page.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi() .initNotification();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WelcomePage(),
      title: 'Unity World',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,

    );
  }
}