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
                height: 150,
                child: Image.asset(
                  'assets/images/foss.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FOSS of NSBM is a community established to spread the open source knowledge among students. Founded on 13th of December 2013, ',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'Free, open-source operating systems such as GNU, Linux and BSD are widely utilized today, powering millions of servers, desktops, smartphones (e.g. Google Android) and other devices.',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Free software licenses and open-source licenses are used in many software packages. The Aim of the Starting Open Source Community at National School of Business Management is to develop & encourage skills of young students, contribute to the society with latest developments and new concepts transforming young lives to feel as a part of the world’s largest developing community.',
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
                'foss.nsbm.ac.lk',
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
              position: 'Master Incharge',
              name: 'Dr. Mohamed Shafraz',
              email: 'shafraz@nsbm.ac.lk',
              imageAsset: 'assets/images/incharge.jpg',
            ),
          ],
        ),



        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PersonCard(
              position: 'President',
              name: 'Subodha Hettiarachchi',
              email: 'sphettiarachchi@students.nsbm.ac.lk',
              imageAsset: 'assets/images/FP.jpg',
            ),
          ],
        ),
      ],
    );
  }
}




class EnrollButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _launchEnrollmentURL();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 15, 26, 88),
      ),
      child: Text(
        'Enroll',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }



 void _launchEnrollmentURL() async {
    const url =
        'https://forms.gle/88F6cYFQ35nLp84P7'; 

    final Uri uri = Uri.parse(url);
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch $url';
    }
  }
} 




class PersonCard extends StatelessWidget {
  final String name;
  final String email;
  final String imageAsset;
  final String position;

  PersonCard({
    required this.name,
    required this.imageAsset,
    this.email = '',
    required this.position,
  });




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage(imageAsset),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          position,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),


        if (position.isNotEmpty) // Display position if it's not empty
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        if (email.isNotEmpty) // Display email if it's not empty
          Text(
            email,
            style: TextStyle(
              fontSize: 12,
              color: Colors.blue,
              decoration: TextDecoration.underline, 
            ),
          ),
      ],
    );
  }
}


       






