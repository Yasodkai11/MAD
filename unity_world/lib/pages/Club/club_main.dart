import 'package:flutter/material.dart';
import 'package:unity_world/components/drawer.dart';
import 'package:unity_world/components/menu_notifi_account.dart';

class CommunityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
        drawer: MyDrawer(
          child: Container(),
      ),
      body: Container(
        color: Colors.white, // Sky blue background color
        child: Center(
          child: Column(
            mainAxisAlignment:
             MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'COMMUNITIES',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight:
                   FontWeight.bold,
                  color:
                   Color.fromARGB(255, 30, 144, 255),
                ),
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/fac.jpg', // Replace with your image path
                width: 350, // Adjust the width as needed
              ),
              SizedBox(height: 20),
              Container(
                width: 300, // Adjust the width as needed
                padding:
                 EdgeInsets.all(20),
                decoration: 
                BoxDecoration(
                  color: Color.fromARGB(255, 129, 193, 255), // Navy blue background color for boxes
                  borderRadius:
                   BorderRadius.circular(20), // Rounded corners
                ),
                child: Column(
                  children: <Widget>[
                    CommunityBox(
                      title: 'FOSS',
                      routeName: '/foss',
                    ),
                    SizedBox(height: 10),
                    CommunityBox(
                      title: 'IEEE',
                      routeName: '/ieee',
                    ),
                    SizedBox(height: 10),
                    CommunityBox(
                      title: 'Maths',
                      routeName: '/maths',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CommunityBox extends StatelessWidget {
  final String title;
  final String routeName;

  CommunityBox({
    required this.title,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: 
          Color.fromARGB(255, 15, 26, 88), // Navy blue background color for boxes
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white, // White font color
          ),
        ),
      ),
    );
  }
}
