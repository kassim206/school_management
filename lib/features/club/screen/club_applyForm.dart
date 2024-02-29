import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'enggroup_chat.dart';
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
  void _submit() {
    // Handle the submission here
    String text1 = _controller1.text;
    String text2 = _controller2.text;
    String text3 = _controller3.text;
    String text4 = _controller4.text;
    // Do something with the entered values, such as sending them to an API, etc.
    print('enter name: $text1');
    print('enter class: $text2');
    print('enter PhoneNo: $text3');
    print('Text 4: $text4');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    decoration: InputDecoration(labelText: 'Text 4'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      if(
                      _controller1?.text == "" ||  _controller2?.text == "" ||  _controller3?.text == "" ||
                          _controller4?.text == ""
                      ){
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("Enter all details")));
                      }else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Successfully joined!'),
                            duration: Duration(milliseconds: 500), // Snackbar duration in milliseconds
                          ),
                        );
                        Future.delayed(Duration(milliseconds: 500), () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => ChatScreen()),
                          // );
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EventsEng(),));
                        });
                      }
                      // Add onPressed logic here
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
