import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:unity_world/components/drawer.dart';
import 'package:unity_world/components/menu_notifi_account.dart';


class request extends StatefulWidget {
  const request({Key? key}) : super(key: key);

  @override
  State<request> createState() => _requestState();
}

class _requestState extends State<request> {

  @override
  Widget build(BuildContext context) {

    final subController = TextEditingController();
    final desController = TextEditingController();


    return Scaffold(
      appBar: MyAppBar(
          title: Text('request'),
      ),
       drawer: MyDrawer(
        child: Container(),

       
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
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  const Text(
                    "Subject :- ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    controller: subController,
                    decoration: const InputDecoration(
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
              child: Column(
                children: [
                  SizedBox(height: 10.0),
                  const Text(
                    "Please provide a brief description :- ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  SizedBox(height: 15.0),
                  TextFormField(
                    controller: desController,
                    decoration: const InputDecoration(
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

                    CollectionReference collRef = FirebaseFirestore.instance.collection('requestform');
                    collRef.add({
                      'subject': subController.text,
                      'description': desController.text,
                    });

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
                              backgroundColor:
                                   Colors.white,
                              titleTextStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
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