import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore
import 'package:school_management/features/club/screen/sports_club.dart';
import 'events_eng.dart';

class ClubApplicationForm extends StatefulWidget {
  @override
  _ClubApplicationFormState createState() => _ClubApplicationFormState();
}

class _ClubApplicationFormState extends State<ClubApplicationForm> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  final TextEditingController _controller3 = TextEditingController();
  final TextEditingController _controller4 = TextEditingController();

  // Firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  void _submit() async {
    // Handle the submission here
    String text1 = _controller1.text;
    String text2 = _controller2.text;
    String text3 = _controller3.text;
    String text4 = _controller4.text;

    // Create a map to store the data
    Map<String, dynamic> userData = {
      'name': text1,
      'class': text2,
      'phoneNo': text3,
      'sem': text4,
    };

    // Add data to Firestore
    try {
      await _firestore.collection('registerStudent').add(userData);
      print('Data added to Firestore successfully');
    } catch (e) {
      print('Error adding data to Firestore: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
        title: Text('Registration'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    controller: _controller1,
                    decoration: InputDecoration(labelText: 'enter name'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _controller2,
                    decoration: InputDecoration(labelText: 'enter class'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _controller3,
                    decoration: InputDecoration(labelText: 'enter PhoneNo'),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _controller4,
                    decoration: InputDecoration(labelText: 'enter sem'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      if (_controller1?.text == "" ||
                          _controller2?.text == "" ||
                          _controller3?.text == "" ||
                          _controller4?.text == "") {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("Enter all details")));
                      } else {
                        _submit(); // Call the function to save data
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Successfully joined!'),
                            duration: Duration(milliseconds: 500),
                          ),
                        );
                        Future.delayed(Duration(milliseconds: 500), () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SporstsClub(),));
                        });
                      }
                    },
                    child: Text(
                      'Continue to Join here..',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
