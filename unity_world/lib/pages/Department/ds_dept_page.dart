import 'package:flutter/material.dart';
import 'package:unity_world/components/back_notifi_account.dart';
import 'package:unity_world/components/drawer.dart';
import 'package:unity_world/pages/HomePage/home_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Dep_Head/ds_head.dart';

class DsDeptPage extends StatelessWidget {
  const DsDeptPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        drawer: MyDrawer(
              child: Container(),
        ),

        
      body: Center(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                   ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/csds.jpg',
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
                      'The Department of Data Science (DDS) was established under the Faculty of Computing on the day of 15th December 2020. The department is focused to be the leader in the discipline of Data Science in Sri Lanka which include knowledge contribution from the key areas of Artificial Intelligence, Machine Learning, Deep Learning, Natural Language processing, Data Mining, Statistical Modeling, Simulation, Optimization and Visualization. DDS is preparing to conduct seminars, workshops, and an annual conference in Data Science as its future activities. The department is aiming to disseminate knowledge and spread the global opportunities and business transformation trends with this highly sort after discipline of data science.',
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
                          'BSc (Honours) in Data Science – (UGC Approved – Offered By NSBM)',
                          'https://www.nsbm.ac.lk/course/bsc-honors-in-data-science/',
                        ),
                        _buildProgramLink(
                          context,
                          'BSc (Hons) in Computer Science – (UGC Approved – Offered By NSBM)',
                          'https://www.nsbm.ac.lk/course/bachelor-of-science-honours-in-computer-science-bsc-honours-in-computer-science-ugc/',
                        ),
                        _buildProgramLink(
                          context,
                          'BSc (Hons) Computer Science – (Plymouth University – United Kingdom)',
                          'https://www.nsbm.ac.lk/course/bsc-hons-computer-science/',
                        ),
                        _buildProgramLink(
                          context,
                          'BSc (Hons) in Data Science – (Plymouth University – United Kingdom)',
                          'https://www.nsbm.ac.lk/course/bsc-hons-data-science-plymouth/',
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
                                    builder: (context) => DsheadPage()),
                              );
                            },
                            child: Column(
                              children: [
                                 ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  'assets/images/pramudya.webp',
                                  width: 100,
                                  height: 100,
                                ),
                                 ),
                                const Text(
                                  'Mr. Pramudya Thilakarathne\nHead / Senior Lecturer',
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
                          child: Image.asset(
                            'assets/images/gayan.webp',
                            width: 100,
                            height: 100,
                          ),
                           ),
                          const Text(
                            'Mr. Gayan Perera\nLecturer',
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
                      Column(
                        children: [
                           ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/hirushi.webp',
                            width: 100,
                            height: 100,
                          ),
                           ),
                          const Text(
                            'Ms. Hirushi Dilpriya\nTemporary Lecturer',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 7),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                           ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/nethmi.webp',
                            width: 100,
                            height: 100,
                          ),
                           ),
                          const Text(
                            'Ms. nethmi\nLecturer',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 7),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
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
