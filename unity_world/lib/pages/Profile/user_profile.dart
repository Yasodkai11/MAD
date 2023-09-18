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
        barrierDismissible: false, // user must tap button!
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
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),

              TextButton(
                child: const Text('Logout'),
                onPressed: () {
                  // Add your logout logic here
                  // For example, you can clear user credentials and navigate to the login page
                  // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          );
        },
      );
    }