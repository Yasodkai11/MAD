import 'package:flutter/material.dart';
import 'package:unity_world/pages/HomePage/home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Dep_Head/css_head.dart';

class CsseDepPage extends StatelessWidget {
  const CsseDepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:Image.asset(
                    'assets/images/csse.png',
                    height: 200,
                    width: 1000,
                  ),
                  ),
                  _buildCurvedContainer(
                    context,
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'The Department of Computer Science & Software Engineering is the largest department of the Faculty of Computing. It offers industry-focused, local, and international degree programs in relation to the most demanding skills in Computer Science, Software Engineering, and Web & Mobile Application Development. From the institution’s inception to today, thousands of high-calibre graduates are produced, and they are employed in leading IT-related industries in Sri Lanka and overseas. The department’s key focus is to identify the students’ potential & empower and transform them into globally competitive graduates with the right skills, knowledge, and attitudes to achieve their dream careers.',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    color: Color.fromARGB(255, 15, 26, 88),
                  ),
                  ),
                  SizedBox(height: 10),
                  _buildCurvedContainer(
                    context,
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Programmes',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 10),
                        _buildProgramLink(
                          context,
                          'BSc (Hons) Software Engineering – (Plymouth University – United Kingdom)',
                          'https://www.nsbm.ac.lk/course/bsc-hons-software-engineering/',
                        ),
                        _buildProgramLink(
                          context,
                          'BSc (Hons) in Software Engineering – (UGC Approved – Offered By NSBM)',
                          'https://www.nsbm.ac.lk/course/bsc-honours-in-software-engineering/',
                        ),
                        _buildProgramLink(
                          context,
                          'Foundation Programme for Bachelor’s Degree',
                          'https://www.nsbm.ac.lk/course/foundation-programme-duplicate-6306/',
                        ),
                      ],
                    ),
                    color: Color.fromARGB(255, 15, 26, 88),
                  ),
                  ),
                  SizedBox(height: 10),
                  const Text(
                    'Academic Staff',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CssheadPage()),
                              );
                            },
                            child: Column(
                              children: [
                                ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                                child:Image.asset(
                                  'assets/images/pavitra.webp',
                                  width: 100,
                                  height: 100,
                                ),
                                ),
                                const Text(
                                  'Ms. Pavithra Subhashini\nHead / Senior Lecturer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 7),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                          child:Image.asset(
                            'assets/images/dulanjali.webp',
                            width: 100,
                            height: 100,
                          ),
                          ),
                          const Text(
                            'Ms. Dilanjali Wijesekara\nLecturer',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 7),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/rasika.webp',
                            width: 100,
                            height: 100,
                          ),
                          const Text(
                            'Dr. Rasika Ranaweera\nDean / Senior Lecturer',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 7),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20), // Adding space between rows
                  // Second line of images
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/vimukthi.jpg',
                                width: 100,
                                height: 100,
                              ),
                              const Text(
                                'Mr. Vimukhthi\nDepartment Secretary',
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(color: Colors.black, fontSize: 7),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildCurvedContainer(BuildContext context, Widget child) {
    return Container(
      margin:
       EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius:
         BorderRadius.circular(20), // Adjust the radius as needed
        color: Color.fromARGB(255, 15, 26, 88),
      ),
      child: child,
    );
  }

  Widget _buildProgramLink(
      BuildContext context, String programName, String url) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: TextButton(
        onPressed: () {
          _launchURL(url);
        },
        child: Text(
          programName,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
