import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController studentid = TextEditingController();
    TextEditingController fullname = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController batch = TextEditingController();


     Future<void> _showLogoutConfirmationDialog(BuildContext context) async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, 
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Confirm Logout'),
            content: const SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Are you sure you want to logout?'),
                ],
              ),
            ),


actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop(); 
                },
              ),

              TextButton(
                child: const Text('Logout'),
                onPressed: () {
                  
                  Navigator.of(context).pop(); 
                },
              ),
            ],
          );
        },
      );
    }




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('User Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                "Profile",
                style: TextStyle(
                  color: Color.fromARGB(255, 30, 144, 255),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),


             Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.asset(
                          'assets/images/profile.png',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),



             
            TextField(
              controller: username,
              decoration: InputDecoration(
                labelText: 'User Name',
                prefixIcon: const Icon(Icons.person),
                border: myInputBorder(),
                enabledBorder: myInputBorder(),
                focusedBorder: myFocusBorder(),
              ),
            ),



             SizedBox(
              height: 20.0,
            ),

            TextField(
              controller: studentid,
              decoration: InputDecoration(
                labelText: 'Student ID',
                prefixIcon: const Icon(Icons.people),
                border: myInputBorder(),
                enabledBorder: myInputBorder(),
                focusedBorder: myFocusBorder(),
              ),
            ),


            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: fullname,
              decoration: InputDecoration(
                labelText: 'Full Name',
                prefixIcon: const Icon(Icons.person),
                border: myInputBorder(),
                enabledBorder: myInputBorder(),
                focusedBorder: myFocusBorder(),
              ),
            ),

             SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: const Icon(Icons.email),
                border: myInputBorder(),
                enabledBorder: myInputBorder(),
                focusedBorder: myFocusBorder(),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: batch,
              decoration: InputDecoration(
                labelText: 'Batch',
                prefixIcon: const Icon(Icons.people),
                border: myInputBorder(),
                enabledBorder: myInputBorder(),
                focusedBorder: myFocusBorder(),
              ),
            ),


            SizedBox(
              height: 30.0,
            ),

            ElevatedButton(
              onPressed: () {
                _showLogoutConfirmationDialog(
                    context); 
              },
              child: const Text('Logout'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 15, 26, 88),
                padding: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 20.0),
                textStyle: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),




            SizedBox(
              height: 30.0,
            ),

            
            
          ],
        ),
      ),
    );
  }
}



OutlineInputBorder myFocusBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color: Color(0xfffcbf49),
      width: 3,
    ),
  );
}



OutlineInputBorder myInputBorder() {
  return const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    borderSide: BorderSide(
      color: Color.fromARGB(255, 30, 144, 255),
      width: 3,
    ),
  );
}