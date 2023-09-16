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

      




  
          


  
  
        
    
  


  











































































  























































































  
 
        );
   }                    
   }