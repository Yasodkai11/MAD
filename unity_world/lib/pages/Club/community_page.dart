import 'package:flutter/material.dart';

import 'package:unity_world/components/drawer.dart';
import 'package:unity_world/components/menu_notifi_account.dart';
import 'foss_page.dart';
import 'ieee_page.dart';
import 'maths_page.dart';


class CommunityPage extends StatelessWidget {
  // Define the getPage function outside of the build method
  Widget getPage(String routeName) {
    switch (routeName) {
      case '/foss':
        return FOSSPage();
      case '/ieee':
        return IEEEPage();
      case '/maths':
        return MathsPage();
      default:
        return CommunityPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    void navigateToPage(String routeName) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => getPage(routeName),
      ));
    }

    return Scaffold(
      appBar: MyAppBar(
        title: Text('club main'),
      ),
        drawer: MyDrawer(
          child: Container(),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'COMMUNITIES',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 30, 144, 255),
                ),
              ),
              SizedBox(height: 10),
              Image.asset(
                'assets/images/fac.jpg',
                width: 350,
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 129, 193, 255),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: <Widget>[
                    CommunityBox(
                      title: 'FOSS',
                      routeName: '/foss',
                      onPressed: () {
                        navigateToPage('/foss'); // Navigate to FOSS Page
                      },
                    ),
                    SizedBox(height: 10),
                    CommunityBox(
                      title: 'IEEE',
                      routeName: '/ieee',
                      onPressed: () {
                        navigateToPage('/ieee'); // Navigate to IEEE Page
                      },
                    ),
                    SizedBox(height: 10),
                    CommunityBox(
                      title: 'Maths',
                      routeName: '/maths',
                      onPressed: () {
                        navigateToPage('/maths'); // Navigate to Maths Page
                      },
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
  final VoidCallback onPressed;

  CommunityBox({
    required this.title,
    required this.routeName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 15, 26, 88),
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
