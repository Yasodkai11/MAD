import 'package:flutter/material.dart';
import 'package:unity_world/pages/Welcome/login_page.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool singinPage = true;

  // Toggle pages
  void switchPages() {
    setState(() {
      singinPage = !singinPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (singinPage == true) {
      return LoginPage();
    } else {
      // Return another page or a default page when singinPage is false
      return Placeholder(); // Change Placeholder() to your desired widget.
    }
  }
}
