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

const SizedBox(
  height: 10.0),
  Container(
    margin: const EdgeInsets.only(top: 10, bottom: 5, right: 50, left: 50,),
    width: 250.0,
    height: 200.0,
  
    decoration:  BoxDecoration (
    borderRadius:  BorderRadius.circular(30.0),
    color: Color.fromARGB(255, 129, 193, 255),),
    padding: EdgeInsets.all(40),
    child: const Text("To decide our strength in the present and up and coming programming innovations by conveying modern arrangements that keep them serving and remaining for more.",
    textAlign:  TextAlign.center,
    ),
      ),




const SizedBox(height: 15.0),

          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5, right: 50, left: 30,),
              child: const Text(
                "Our Vision",
                textAlign: TextAlign.center,


                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),



 const SizedBox(
  height: 10.0),
  Container(
    margin: const EdgeInsets.only(top: 10, bottom: 5, right: 50, left: 50,),
    width: 250.0,
    height: 200.0,
   
   
    decoration:  BoxDecoration (
    borderRadius:  BorderRadius.circular(30.0),
    color: Color.fromARGB(255, 129, 193, 255),),
    padding: EdgeInsets.all(40),
    child: const Text("To acquire profound respect from the supporters over the globe and distinctive verticals of the business by conveying intriguing yet answers for their issues/challenges.",
    textAlign:  TextAlign.center,
    ),
  ),





















































































































































































































































          ],
        ),
      )
 );
   }                    
   }