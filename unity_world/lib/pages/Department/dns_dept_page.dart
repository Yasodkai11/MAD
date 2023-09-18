import 'package:flutter/material.dart';
import 'package:unity_world/components/back_notifi_account.dart';
import 'package:unity_world/components/drawer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Dep_Head/dns_head.dart';

class DnsDeptPage extends StatelessWidget {
  const DnsDeptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: const BackAppBar(),
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
                  child:Image.asset(
                    'assets/images/network.png',
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
                      'The Department of Network and Security comes under the Faculty of Computing, which offers industry-focused local and international degree programs specialized in the field of networking and security. The department offers unique opportunities to achieve the students’ dream careers in the fields of networking and security, and Information Communication Technology.\n\nThe Department of Network and Security is focused on 3 main areas, namely, Data Communication Networks, Infrastructure Systems (Servers, Datacenters) and Security (both system and infrastructure). The department has established affiliations with leading Internet Service Providers (ISP) in the country to provide a real-time experience of the finest technological platforms in the aforementioned areas. The department provides a unique learning and research experience to students through the university academic staff, flying faculty members of University of Plymouth and industrial experts.',
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
                          'BSc (Hons) Computer Networks – (Plymouth University – United Kingdom)',
                          'https://www.nsbm.ac.lk/course/bsc-hons-in-computer-networks/',
                        ),
                        _buildProgramLink(
                          context,
                          'BSc (Hons) Computer Security – (Plymouth University – United Kingdom)',
                          'https://www.nsbm.ac.lk/course/bsc-hons-in-computer-security/',
                        ),
                        _buildProgramLink(
                          context,
                          'Bachelor of Information Technology (Major in Cyber Security) – (Victoria University – Australia)',
                          'https://www.nsbm.ac.lk/course/bachelor-of-information-technology-major-in-cyber-security/',
                        ),
                        _buildProgramLink(
                          context,
                          'BSc (Hons) in Computer Networks – (UGC Approved – Offered By NSBM)',
                          'https://www.nsbm.ac.lk/course/bsc-hons-in-computer-networks/',
                        ),
                      ],
                    ),
                    color: Color.fromARGB(255, 15, 26, 88),
                  ),
                  ),
                  SizedBox(height: 10),
                  const Text(
                    'Academic Staff',
                    style: TextStyle
                    (color: Colors.black, 
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
                                    builder: (context) => DnsheadPage()),
                              );
                            },
                            child: Column(
                              children: [
                                 ClipRRect(
                             borderRadius: BorderRadius.circular(20),
                                child:Image.asset(
                                  'assets/images/chamindra.webp',
                                  width: 100,
                                  height: 100,
                                ),
                                 ),
                                const Text(
                                  'Mr. Chamindra Attanayake\nHOD / Senior Lecturer',
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
                            'assets/images/chamara.webp',
                            width: 100,
                            height: 100,
                          ),
                           ),
                          const Text(
                            'Mr. Chamara Disanayake\nSenior Lecturer',
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
                            'assets/images/dilhara.webp',
                            width: 100,
                            height: 100,
                          ),
                           ),
                          const Text(
                            'Mr. Dilhara Batan Arachchige\nLecturer',
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
                            'assets/images/isuru.webp',
                            width: 100,
                            height: 100,
                          ),
                           ),
                          const Text(
                            'Mr. Isuru Sri Bandara\nLecturer',
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
    home: DnsDeptPage(),
  ));
}
