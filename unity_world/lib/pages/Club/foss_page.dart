import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: FOSSPage(),
  ));
}

class FOSSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text(
              'Welcome FOSS',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 30, 144, 255),
              ),
            ),
            SizedBox(height: 20),
            DescriptionBox(),
            SizedBox(height: 20),
            MiddleImages(),
            SizedBox(height: 20),
            EnrollButton(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}