import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: IEEEPage(),
  ));
}

class IEEEPage extends StatelessWidget {
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
              'Welcome IEEE',
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

class DescriptionBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 15, 26, 88),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 200,
                child: Image.asset(
                  'assets/images/ieee.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IEEE is the world’s largest professional association dedicated to advancing technological innovation and excellence for the benefit of humanity.',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'IEEE and its members inspire a global community through its highly cited publications, conferences, technology standards, and professional and educational activities.',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'IEEE is the trusted “voice” for engineering, computing and technology information around the globe. There are more than 421,000 IEEE members in more than 160 countries.',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),

          SizedBox(height: 10),
          Text(
            'It publishes a third of the world’s technical literature in electrical engineering, computer science and electronics and is a leading developer of international standards that underpin many of today',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),


          SizedBox(height: 20),
          Center(
            child: Text(
              'Contact: ',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),

          SizedBox(height: 5),
          Center(
              child: Text(
                'ieee.nsbm.ac.lk',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue, 
                  decoration: TextDecoration.underline, 
                ),
              ),
            ),
            ],
        ),
      );
  }
}


class MiddleImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PersonCard(
              position: 'Mistress Incharge',
              name: 'Ms.Dulanjali Wijesekara',
              email: 'dulanjali.w@nsbm.ac.lk',
              imageAsset: 'assets/images/Dulanjalimam.jpg',
            ),
          ],
        ),