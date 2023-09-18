import 'package:flutter/material.dart';

class MyFormApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
   final TextEditingController _nameController = TextEditingController();
   final TextEditingController _degreeController = TextEditingController();
   final TextEditingController _batchController = TextEditingController();
   final TextEditingController _studentNoController = TextEditingController();
   final TextEditingController _contactController = TextEditingController();
   final TextEditingController _purposeController = TextEditingController();
   final TextEditingController _dateTimeFromController = TextEditingController();
   final TextEditingController _dateTimeToController = TextEditingController();

      String _enteredName = '';
      String _enteredDegree = '';
      String _enteredBatch = '';
      String _enteredStudentNo = '';
      String _enteredContact = '';
      String _enteredPurpose = '';
      String _enteredDateTimeFrom = '';
      String _enteredDateTimeTo = '';

      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HALL RESERVATION FORM'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(15,26,88,1.0),
              borderRadius: BorderRadius.circular(12), 
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _nameController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'Requester\'s Name',labelStyle: TextStyle(color: Colors.white),helperStyle: TextStyle(color: Colors.white)),
                  ),