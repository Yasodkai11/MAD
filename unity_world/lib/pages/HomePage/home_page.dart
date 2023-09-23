import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:unity_world/components/drawer.dart';
import 'package:unity_world/components/menu_notifi_account.dart';
import 'package:unity_world/pages/Department/css_dept_page.dart';
import 'package:unity_world/pages/Department/dns_dept_page.dart';
import 'package:unity_world/pages/Department/ds_dept_page.dart';
import 'package:unity_world/pages/Department/mis_dept_page.dart';


// ignore: must_be_immutable
class HomePage extends StatelessWidget {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Scaffold(
    
          appBar: MyAppBar(
              title: Text('Home Page'),
          ),
    
          drawer: MyDrawer(
            child: Container(),
          ),
          
          body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
        
                children: [
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    
                    child: CarouselSlider(
                      items: [
                        for (int i = 0; i < 1; i++)

                        Container(
                          alignment: Alignment.topCenter,
                          margin: 
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(123, 193, 255, 1.0),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset:Offset(0, 4)
                              ) 
                            ]
                          ),
                          
                          child: Column(
                            children: [
                              Text("Our Vision",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          
                              Image.asset(
                                'assets/icons/vision.png'
                              ),
                          
                              Text(
                                "To be Sri Lanka's best-performing graduate school and to be recognized internationally.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),

                            ],
                          ),

                        ),
                          
                        Container(
                          alignment: Alignment.topCenter,
                          margin: 
                            EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(123, 193, 255, 1.0),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset:Offset(0, 4)
                              ) 
                            ]
                          ),
                          
                          child: Column(
                            children: [
                              Text(
                                "Our Mission",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                              ),
                          
                              Image.asset(
                                'assets/icons/mission.png',
                              ),
                          
                              Text(
                                "To develop globally competitive and responsible graduates that businesses demand, working in synergy with all our stakeholders and contributing to our society.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                              ),
                          
                            ],
                          ),

                        )
                      ], 
                      
                      options: CarouselOptions(
                        onPageChanged: (index, reason) {
                    
                        },
                        
                        autoPlay: true
                      ),
                    ),
                  ),
        
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    
                    children: [
                
                      Text(
                        "Our Departments",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                
                      Padding(
                        padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
        
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
        
                          children: [
        
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
        
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  side: BorderSide(
                                    width: 1, 
                                    color: Colors.black,
                                  ),
                                  shape: RoundedRectangleBorder( //to set border radius to button
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: EdgeInsets.all(2)
                                ),
                                
                                onPressed: () { 
                                  Navigator.push(
                                    context,
                                      MaterialPageRoute(
                                        builder: (context) => CsseDepPage()
                                      )
                                  );
                                 },

                                child: Image.asset(
                                  'assets/images/csse1.png',
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                            ),
                      
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
        
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  side: BorderSide(
                                    width: 1,
                                    color: Colors.black,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: EdgeInsets.all(2)
                                ),
                                
                                onPressed: () { 
                                  Navigator.push(
                                    context, 
                                      MaterialPageRoute(
                                        builder: (context) => IsseDepPage()
                                      )
                                  );
                                 },

                                child: Image.asset(
                                  'assets/images/iss1.png',
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                            ),
        
                          ],
                        ),
                      ),
        
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
        
                          children: [
        
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                              
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  side: BorderSide(
                                    width: 1, 
                                    color: Colors.black,
                                  ),
                                  shape: RoundedRectangleBorder( //to set border radius to button
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: EdgeInsets.all(2)
                                ),
                                
                                onPressed: () { 
                                  Navigator.push(
                                    context, 
                                      MaterialPageRoute(
                                        builder: (context) => DnsDeptPage()
                                      )
                                  );
                                 },

                                child: Image.asset(
                                  'assets/images/d1.png',
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                            ),
                      
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
        
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  side: BorderSide(
                                    width: 1, 
                                    color: Colors.black,
                                  ),
                                  shape: RoundedRectangleBorder( //to set border radius to button
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  padding: EdgeInsets.all(2)
                                ),
                                
                                onPressed: () { 
                                  Navigator.push(
                                    context, 
                                      MaterialPageRoute(
                                        builder: (context) => DsDeptPage()
                                      )
                                  );
                                 },
                                 
                                child: Image.asset(
                                  'assets/images/data1.png',
                                  width: 160,
                                  height: 160,
                                ),
                              ),
                            ),
        
                          ],
                        ),
                      )
        
                    ],
                  ),
                ),
                
                ],
              ),
            ),
          
        ),
      ],
    );
  }
}