import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Dep_Head/mis_head.dart';


class IsseDepPage extends StatelessWidget {
  const IsseDepPage({super.key});

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
                 child: Image.asset(
                    'assets/images/mis.png',
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
                      'The Department of Information and Systems Sciences focuses on developing professionals who are experts in both IT and business domains. Such a blissful blend promotes developing graduates with both social skills and analytical skills. The core of our curriculum reflects quite well the model created by the Association of Information Systems (AIS), an international society of ISS researchers and teachers. The academic activities at the department range over a wide field characterized by interdisciplinary elements and are focused on developing and adapting the use of IT to the needs of people, organizations and society. The employment rate of our students is extremely high, and they get the right positions in both IT and Management sectors organizations recognizing their expertise in both business and IT domains.',
                      style: 
                      TextStyle
                      (color: Colors.white, 
                      fontSize: 15
                      ),
                    ),
                    color: Color.fromARGB(255, 15, 26, 88),
                  ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'Programmes',
                          style: 
                          TextStyle
                          (color: Colors.white, 
                          fontSize: 20
                          ),
                        ),
                        SizedBox(height: 10),
                        _buildProgramLink(
                          context,
                          'BSc (Hons) Technology Management – (Plymouth University – United Kingdom)',
                          'https://www.nsbm.ac.lk/course/bsc-honours-in-technology-management/',
                        ),
                        _buildProgramLink(
                          context,
                          'BSc in Management Information Systems (Special) – (UGC Approved – Offered By NSBM)',
                          'https://www.nsbm.ac.lk/course/bsc-in-management-information-systems-special-ugc/',
                        ),
                        _buildProgramLink(
                          context,
                          'Foundation Programme for Bachelor’s Degree',
                          'https://www.nsbm.ac.lk/course/foundation-programme',
                        ),
                      ],
                    ),
                    color: Color.fromARGB(255, 15, 26, 88),
                  ),
                  SizedBox(height: 10),
                  const Text(
                    'Academic Staff',
                    style: 
                    TextStyle(color: Colors.black,
                     fontSize: 20
                     ),
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
                                    builder: (context) => MisheadPage()),
                              );
                            },
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/shafraz.webp',
                                  width: 100,
                                  height: 100,
                                ),
                                const Text(
                                  'Dr. Mohamed Shafraz \nHead / Senior Lecturer',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black, 
                                      fontSize: 7
                                      ),
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
                          Image.asset(
                            'assets/images/naji.webp',
                            width: 100,
                            height: 100,
                          ),
                          const Text(
                            'Mr. Naji Saravanabavan\nSenior Lecturer',
                            textAlign: TextAlign.center,
                            style: 
                            TextStyle
                            (color: Colors.black,
                             fontSize: 7
                             ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/chalani.webp',
                            width: 100,
                            height: 100,
                          ),
                          const Text(
                            'Ms. Chalani Oruthotaarachchi\nSenior Lecturer',
                            textAlign: TextAlign.center,
                            style:
                             TextStyle(
                              color: Colors.black,
                               fontSize: 7
                               ),
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
          style:
           TextStyle
           (color: Colors.white),
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
    home: IsseDepPage(),
  ));
}

