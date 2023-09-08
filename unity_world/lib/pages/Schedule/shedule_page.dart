import 'package:flutter/material.dart';

class Shedule extends StatefulWidget {
  const Shedule({Key? key}) : super(key: key);

  @override
  State<Shedule> createState() => _SheduleState();
}

class _SheduleState extends State<Shedule> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Shedule Page'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Center(
              child: Text(
                "Shedule",
                style: TextStyle(
                    color: Color.fromARGB(255, 30, 144, 255),
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}