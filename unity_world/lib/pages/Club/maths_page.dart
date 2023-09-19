import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: MathsPage(),
  ));
}

lass MathsPage extends StatelessWidget {
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
              'Welcome Maths',
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
                  'assets/images/maths.png',
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The inauguration ceremony of the Mathematics and Statistics Circle of the NSBM Faculty of Computing was held on 10th May 2023.',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            'This special occasion was graced by the Vice-Chancellor Prof. E. A. Weerasinghe, Deputy Vice-Chancellor Prof. Chaminda Rathnayake, Deans of Faculty of Computing, Dr. Rasika Ranaweera, Dean of the Faculty of Postgraduate Studies, Dr. Chaminda Wijesinghe, Heads of the Department of Computer Science and Software Engineering, Ms. Pavithra Subashini, academics and non-academics. To mark the inauguration with a memorable event, the circle organized ” Mathematic Quiz Competition involving all the mathematic enthusiasts of the faculty. The first two rounds of the competition were held at the occasion, and the top ten groups were selected for the next round.',
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
                'maths.nsbm.ac.lk',
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
              name: 'Ms.Hirushi Dilpriya',
              email: 'hirushi.d@nsbm.ac.lk',
              imageAsset: 'assets/images/hirushimadam.jpg',
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PersonCard(
                    position: 'President',
                    name: 'Nipun Lakshitha',
                    email: 'nldisanayake@students.nsbm.ac.lk',
                    imageAsset: 'assets/images/MP.jpg',
                  ),
                  SizedBox(width: 20), 
                  PersonCard(
                    position: 'Secretary',
                    name: 'A.D.Kaushalya',
                    email: 'adkaushalya@students.nsbm.ac.lk',
                    imageAsset: 'assets/images/MS.jpg',
                  ),
                ],
              ),
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




