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


 const SizedBox(
  height: 10.0),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Faculty Of Computing",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromARGB(255, 82, 81, 81),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),



          
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Faculty of Computing (FOC) provides world-class education and training in Computing and Information Technology, both at the undergraduate as well as postgraduate levels.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    //fontSize: 10,
                    fontWeight: FontWeight.normal),
              ),
          ),



          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "FOC offers University Grants Commission’s approved degree programmes in multiple disciplines. It has also partnered with the world top ranking universities, University of Plymouth in UK and Victoria University in Australia, to provide undergraduates with highly recognized International Degrees. The innovative teaching methods, along with the latest state-of-the-art equipment, form the perfect blend that motivates our students to do their best and reach their goals with ease.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    //fontSize: 10,
                    fontWeight: FontWeight.normal),
              ),
          ),



          
          Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "The Faculty provides top-notch research, training and development services that will help students acquire new knowledge along with the best practices in their respective disciplines. The FOC aims to be among the foremost centre of excellence in Research and Development (R&D) and advance education in computing while taking into consideration national as well as regional requirements for Information and Communication Technology.",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    //fontSize: 10,
                    fontWeight: FontWeight.normal),
              ),
            ),
          




           Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "The FOC places equal emphasis on both theory and practice of all aspects of the computing field, enabling our students to have sufficient hands-on experience to take up any working assignment in their respective IT fields at the end of their degree programmes. So, look no further for that perfect computing degree; NSBM’s Faculty of Computing is the ideal choice!",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    //fontSize: 10,
                    fontWeight: FontWeight.normal),
              ),
            ),



            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 5),
              child: const Text(
                "Dean's Message",
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromARGB(255, 15, 26, 88),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),



          





















































































































































































































































          ],
        ),
      )
 );
   }                    
   }