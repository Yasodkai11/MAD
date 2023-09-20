import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:unity_world/components/back_notifi_account.dart';


class DnsheadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(
      
      
      
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Mr. Chamara Disanayake',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Senior Lecturer / Head',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20),
            ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/chamindra.webp', // Assuming the image is located in the 'assets' folder
              width: 150, // Adjust the width as needed
            ),
            ),
            SizedBox(height: 20),
             _buildCurvedContainer(
                    context,
            Container(
              width: 300,
              padding: EdgeInsets.all(20),
              color: Color.fromARGB(255, 15, 26, 88),
              child: Column(
                children: [
                  Text(
                    'CONTACT INFO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildContactInfoRow(
                      icon: 'assets/icons/email.png',
                      value: 'chamindra.a@nsbm.ac.lk',
                    ),
                    _buildContactInfoRow(
                      icon: 'assets/icons/phone.png',
                      value: '+94 11 544 5000 (ext 1213)',
                    ),
                    _buildContactInfoRow(
                      icon: 'assets/icons/department.png',
                      value: 'Department of Network and Security',
                    ),
                    _buildContactInfoRow(
                      icon: 'assets/icons/faculty.png',
                      value: 'Faculty of Computing',
                    ),
                    _buildContactInfoRow(
                      icon: 'assets/icons/google.png',
                      value: 'Google Scholar',
                    ),
                    _buildContactInfoRow(
                      icon: 'assets/icons/linkedin.png',
                      value: 'LinkedIn',
                    ),
                ],
              ),
            ),
             ),
          ],
        ),
      ),
    );
  }
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
  Widget _buildContactInfoRow({required String icon, required String value}) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Container(
          height: 24, // Adjust the height as needed
          width: 24, // Adjust the width as needed
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
            color: Colors.white,
          ),
        ),
         SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              if (icon == 'https://lk.linkedin.com/') {
                launch(value);
              }
            },
            child: Text(
              value,
              style: TextStyle(
                color: icon == 'linkedin.png' ? Colors.blue : Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

void main() {
  runApp(MaterialApp(
    home: DnsheadPage(),
  ));
}
