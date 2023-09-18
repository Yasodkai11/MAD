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
                  TextField(
                    controller: _degreeController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'Degree Program',labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextField(
                    controller: _batchController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'Batch Number',labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextField(
                    controller: _studentNoController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(labelText: 'Student Number',labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _contactController,
                    decoration: InputDecoration(labelText: 'Contact Number',labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _purposeController,
                    decoration: InputDecoration(labelText: 'Purpose',labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _dateTimeFromController,
                    decoration: InputDecoration(labelText: 'Request Date',labelStyle: TextStyle(color: Colors.white)),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _dateTimeToController,
                    decoration: InputDecoration(labelText: 'Time',labelStyle: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(height: 20.0),

                  ElevatedButton(
                    onPressed: () {
                      _enteredName = _nameController.text;
                      _enteredDegree = _degreeController.text;
                      _enteredBatch = _batchController.text;
                      _enteredStudentNo = _studentNoController.text;
                      _enteredContact = _contactController.text;
                      _enteredPurpose = _purposeController.text;
                      _enteredDateTimeFrom = _dateTimeFromController.text;
                      _enteredDateTimeTo = _dateTimeToController.text;

                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Submitted Information'),
                            content: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Requester\'s Name: $_enteredName', style: TextStyle(color: Colors.white)),
                                    Text('Degree Program: $_enteredDegree', style: TextStyle(color: Colors.white)),
                                    Text('Batch Number: $_enteredBatch', style: TextStyle(color: Colors.white)),
                                    Text('Student Number: $_enteredStudentNo', style: TextStyle(color: Colors.white)),
                                    Text('Contact Number: $_enteredContact', style: TextStyle(color: Colors.white)),
                                    Text('Purpose: $_enteredPurpose', style: TextStyle(color: Colors.white)),
                                    Text('Request Date: $_enteredDateTimeFrom', style: TextStyle(color: Colors.white)),
                                    Text('Time: $_enteredDateTimeTo', style: TextStyle(color: Colors.white)),
                                    SizedBox(height: 20,),
                                    Text('I agree to return hall on or before specified time and i will responsible for any damage for misplace of things within that time period', style: TextStyle(color: Color.fromARGB(255, 46, 141, 213))),
                                  ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(15,26,88,1.0),
                                                
                                  
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            actions: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Center(child: Text('OK')),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
          ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _degreeController.dispose();
    _batchController.dispose();
    _studentNoController.dispose();
    _contactController.dispose();
    _purposeController.dispose();
    _dateTimeFromController.dispose();
    _dateTimeToController.dispose();
    super.dispose();
  }
}