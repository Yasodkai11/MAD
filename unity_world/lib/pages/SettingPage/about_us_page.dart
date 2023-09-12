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



















































































































































































































































          ],
        ),
      )
 );
   }                    
   }