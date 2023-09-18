import 'package:flutter/material.dart';
import 'package:unity_world/components/nav_bar.dart';
import 'package:unity_world/pages/Profile/user_profile.dart';
import 'package:unity_world/pages/SettingPage/about_us_page.dart';
import 'package:unity_world/pages/SettingPage/help_center.dart';
import 'package:unity_world/pages/SettingPage/privacy_policy.dart';
import 'package:unity_world/pages/SettingPage/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required Container child 
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(15),
        bottomRight: Radius.circular(15),
      ),
      
      child: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: [

            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromRGBO(15, 26, 88, 1.0),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),

              child: Column(
                children: [
                  Image.asset(
                    'assets/image/logo1.png',
                    width: size.width * 0.5,
                    height: size.height * 0.12,
                  ),

                  Text(
                    "YASHOD SILVA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: Icon(
                    Icons.person_pin_rounded,
                  ),
                  title: Text(
                    "My Account",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserProfile()
                        ),
                    );
                  },
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: Icon(
                    Icons.people_alt_outlined,
                  ),
                  title: Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AboutUs()
                        ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: Icon(
                    Icons.privacy_tip_outlined,
                  ),
                  title: Text(
                    "Privacy & Policy",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrivacyPolicy()
                        ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: Icon(
                    Icons.settings,
                  ),
                  title: Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingPage()
                        )
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromRGBO(217, 217, 217, 1.0),
                ),
                child: ListTile(
                  iconColor: Colors.black,
                  leading: Icon(
                    Icons.help_outline_outlined,
                  ),
                  title: Text(
                    "Help Center",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HelpCenter()
                        )
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(80, 50, 30, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(15, 26, 88, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigation()
                      )
                  );
                },
      
                child: ListTile(
                  iconColor: Colors.white,
      
                  leading: Icon(
                    Icons.arrow_forward_ios_rounded,
                  ),
                  title: Text(
                    "Back to Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
      
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  
}