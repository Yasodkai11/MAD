  import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}
class _AboutUsState extends State<AboutUs> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('About Us Page'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
            child: Text(
              "About Us",
              style: TextStyle(
                color: Color.fromARGB(255, 30, 144, 255),
                fontSize: 32, 
                fontWeight: FontWeight.bold),
            ),
            ),


const SizedBox(height: 20.0),

          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5, right: 50, left: 30,),
              child: const Text(
                "Our Mission",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),



















































































































































































































































          ],
        ),
      )
 );
   }                    
   }