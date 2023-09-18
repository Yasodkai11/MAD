import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:unity_world/components/back_notifi_account.dart';
import 'package:unity_world/components/drawer.dart';
import 'package:unity_world/pages/SettingPage/about_us_page.dart';
import 'package:unity_world/pages/SettingPage/privacy_policy.dart';


class SettingPage extends StatefulWidget {
  const SettingPage ({Key? key}) : super(key: key);

  @override
  State<SettingPage > createState() => _SettingPageState();
}


class _SettingPageState extends State<SettingPage > {
 


void showAlert(){
  QuickAlert.show(
    context: context, 
    type: QuickAlertType.success
  );
}

  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(),
          drawer: MyDrawer(
        child: Container(
      ),


          ),

  body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
            child: Text(
              "Settings",
              style: TextStyle(
                 color: Color.fromARGB(255, 30, 144, 255),
                 fontSize: 32, 
                 fontWeight: FontWeight.bold
              ),
            ),
                 ),





                 const SizedBox(height: 18.0),
          Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            color: const Color.fromARGB(255, 15, 26, 88),
            child: ListTile(
            onTap: (){
                //open profile Page
              },
              title: const Text("Chamodya Sewwandi", 
              style: TextStyle(color: Colors.white, 
              fontWeight: FontWeight.bold,
              ),),
              leading: const CircleAvatar(
                //backgroundImage: CachedNetworkImageProvider(avatars[0]),
              //add png
              ),
              // add edit button
              // trailing: Icon(Icons.edit, color: Colors.white,),
            ),
          ),
          
          const SizedBox(height: 15.0),
          _buildDivider(),

          const SizedBox(height: 18.0),
          Card(
            color: const Color.fromARGB(255, 15, 26, 88),
            elevation: 4.0,
            margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
            
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Column(
              children: <Widget>[
                const ListTile(
                 // account lock icon-  leading: Icon(Icons.lock_outline, color: Colors.black,),
                  title: Text("Account Settings",
                  style: TextStyle(color: Color.fromARGB(255, 173, 173, 173),
                  ),),
                ),
                

                ListTile(
                 // account lock icon-  leading: Icon(Icons.lock_outline, color: Colors.black,),
                  title: const Text("Profile",
                  style: TextStyle(color: Colors.white,
                  ),),
                  trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.white),
                  onTap: () {
                    //Open Profile page
                   

                  }
                ),
                

               SwitchListTile( 
                  activeColor: Colors.white,
                  value: true, 
                  onChanged: (val){},

                  title: const Text("Notifications",
                  style: TextStyle(color: Colors.white,
                  ),),
                  
                ),



              
                


             const SizedBox(height: 15.0),
                   const Text("Dark Mode",
                      style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
              ),
            ),
            const DarkModeSwitch(
              
            ),
          
        
            
  


  
              const SizedBox(height: 15.0),
             _buildDivider(),

            const SizedBox(height: 15.0),
            const Text("More",
                 style: TextStyle(color: Color.fromARGB(255, 173, 173, 173),
                 fontSize: 18.0,
                 fontWeight: FontWeight.bold,
             ),
             ),
            

            const SizedBox(height: 20.0),
               ListTile(
                 // account lock icon-  leading: Icon(Icons.lock_outline, color: Colors.black,),
                  title: const Text("About Us",
                  style: TextStyle(color: Colors.white,
                  ),),
                  trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.white),
                  onTap: () {
                     Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutUs()),
                              );

                  }
                ),


            const SizedBox(height: 8.0),
               ListTile(
                 // account lock icon-  leading: Icon(Icons.lock_outline, color: Colors.black,),
                  title: const Text("Privacy Policy",
                  style: TextStyle(color: Colors.white,
                  ),),
                  trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.white),
                  onTap: () {
                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PrivacyPolicy()),
                              );


                  }
                ),
             
          ],
        ),
      ),
          ],
        )
      ),
    );
    
  }
        

               
































































































































































































       );
   }                    
   }