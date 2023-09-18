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