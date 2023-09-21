import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Define variables to hold the data
  String requesterName = 'Mark';
  String degreeProgram = 'Computer Science';
  String batchNumber = '21.1';
  String studentNumber = '123456789';
  String hallNumber = 'L101';
  String contactNumber = '0771995953';
  String purpose = 'Study';
  String requestDate = '2023-09-20';
  String time = '14:30 - 16:30';

  Future<void> _showDeleteConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // Prevent dismissing by tapping outside
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Confirmation'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to delete this information?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            TextButton(
              child: Text('Delete'),
              onPressed: () {
                // Handle delete action here
                clearData(); // Clear the data
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }

void clearData() {
    // Reset all data to initial values
    setState(() {
      requesterName = '';
      degreeProgram = '';
      batchNumber = '';
      studentNumber = '';
      hallNumber = '';
      contactNumber = '';
      purpose = '';
      requestDate = '';
      time = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submitted Information'),
      ),


      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Requester's Name
                        Row(
                          children: [
                            Text('\nRequester\'s Name:\n',
                                style: TextStyle(color: Colors.white)),
                            Expanded(
                              child: Text(
                                requesterName,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        // Degree Program
                        Row(
                          children: [
                            Text('\nDegree Program:\n',
                                style: TextStyle(color: Colors.white)),
                            Expanded(
                              child: Text(
                                degreeProgram,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        // Batch Number
                        Row(
                          children: [
                            Text('\nBatch Number:\n',
                                style: TextStyle(color: Colors.white)),



                                                            Expanded(
                              child: Text(
                                batchNumber,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        // Student Number
                        Row(
                          children: [
                            Text('\nStudent Number:\n',
                                style: TextStyle(color: Colors.white)),
                            Expanded(
                              child: Text(
                                studentNumber,
                                style: TextStyle(color: Colors.white),
 ),
                            ),
                          ],
                        ),
                        // Hall Number
                        Row(
                          children: [
                            Text('\nHall Number:\n',
                                style: TextStyle(color: Colors.white)),
                            Expanded(
                              child: Text(
                                hallNumber,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        // Contact Number
                        Row(
                          children: [
                            Text('\nContact Number:\n',
                                style: TextStyle(color: Colors.white)),
                            Expanded(
                              child: Text(
                                contactNumber,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        // Purpose
                        Row(
                          children: [
                            Text('\nPurpose:\n',
                                style: TextStyle(color: Colors.white)),
                            Expanded(
                              child: Text(
                                purpose,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        // Request Date
                        Row(
                          children: [
                            Text('\nRequest Date:\n',
                                style: TextStyle(color: Colors.white)),

                                Expanded(
                              child: Text(
                                requestDate,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        // Time
                        Row(
                          children: [
                            Text('\nTime:\n',
                                style: TextStyle(color: Colors.white)),
                                Expanded(
                              child: Text(
                                time,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                          ),
                        Text(
                            'I agree to return the hall on or before the specified time, and I will be responsible for any damage or misplacement of things within that time period',
                            style: TextStyle(
                                color: Color.fromARGB(255, 46, 141, 213))),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(15, 26, 88, 1.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the edit screen and pass the data
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditPage(
                              initialData: {
                                'requesterName': requesterName,
                                'degreeProgram': degreeProgram,
                                'batchNumber': batchNumber,
                                'studentNumber': studentNumber,
                                'hallNumber': hallNumber,
                                'contactNumber': contactNumber,
                                'purpose': purpose,
                                'requestDate': requestDate,
                                'time': time,
                              },
                            ),
                          ),
                          ).then((editedData) {
                          if (editedData != null) {
                            // Update the data with edited values
                            setState(() {
                              requesterName = editedData['requesterName'];
                              degreeProgram = editedData['degreeProgram'];
                              batchNumber = editedData['batchNumber'];
                              studentNumber = editedData['studentNumber'];
                              hallNumber = editedData['hallNumber'];
                              contactNumber = editedData['contactNumber'];
                              purpose = editedData['purpose'];
                              requestDate = editedData['requestDate'];
                              time = editedData['time'];
                            });
                          }
                        });
                      },