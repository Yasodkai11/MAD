import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}


class _HelpCenterState extends State<HelpCenter> {
 


void showAlert(){
  QuickAlert.show(
    context: context, 
    type: QuickAlertType.success
  );
}

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Help Center Page'),
      ),


      

       body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                "Help Center",

                style: TextStyle(
                    color: Color.fromARGB(255, 30, 144, 255),
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                    ),
              ),
            ),

      
 Container(
              margin: const EdgeInsets.only(
                top: 10.0, 
                bottom: 10.0,
              ),

              width: MediaQuery.of(context).size.width,
              height: 620.0,

              decoration: const BoxDecoration(
                  color:Color.fromARGB(255,217,217,217),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
              ),








              child: Column(
                children: <Widget>[

            
            const SizedBox(height: 10.0),
            Container(
              margin: const EdgeInsets.only(
                top: 2,
                bottom: 5,
                right: 15,
                left: 15,
              ),


              child: const Column(
                children: [
                  Center(
                    child: Text(
                "Contact Us",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                    ),
              ),
            ),





  SizedBox(height: 10.0),
                  Text(
                    "To :- ",
                  
                    style: TextStyle(
                      color: Colors.black, 
                      fontSize: 18,

                      ),
                  ),


                  SizedBox(height: 15.0),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'codewizard@nsbm.gmail.com.',
                    ),
                  ),
                ],
              ),
            ),






  
          


  
  
        
    
  


  











































































  























































































  
 
        );
   }                    
   }