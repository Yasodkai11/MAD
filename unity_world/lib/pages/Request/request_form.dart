import 'package:flutter/material.dart';

// ignore: camel_case_types
class request extends StatefulWidget {
  const request({Key? key}) : super(key: key);

  @override
  State<request> createState() => _requestState();
}

// ignore: camel_case_types
class _requestState extends State<request> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Request Page'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                "Request",
                style: TextStyle(
                    color: Color.fromARGB(255, 30, 144, 255),
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
                 const SizedBox(height: 20.0),
            Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/illustrations/request.png',
                    height: 260,
                    width: 320,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10.0),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 5,
                right: 50,
                left: 10,
              ),
              child: const Column(
                children: [
                  SizedBox(height: 10.0),
                  Text(
                    "Subject :- ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter the subject here',
                    ),
                  ),
                ],
              ),              
            ),

            const SizedBox(height: 10.0),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                bottom: 5,
                right: 50,
                left: 10,
              ),
              child: const Column(
                children: [
                  SizedBox(height: 10.0),
                  Text(
                    "Please provide a brief description :- ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(height: 15.0),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter a description here',
                    ),
                    maxLines: 5,
                    minLines: 1,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            Center(
              child: MaterialButton(
                  padding: const EdgeInsets.all(10),
                  height: 56,
                  minWidth: 155,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: const Color.fromARGB(255, 15, 26, 88),
                  textColor: Colors.white,
                  child: const Text("Send",style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Center(
                            child: AlertDialog(
                              title: const Center(
                                child: Text("Successful",style: TextStyle(
                                    color: Color.fromARGB(255, 30, 144, 255),
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),),
                              ),
                              
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    
                                  },

                                  child: const Center(
                                    child: Text("Done"),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  }),
            )
          ],
        ),
      ),
    );
  }
}