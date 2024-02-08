import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/globel_variable.dart';
import 'club_applyForm.dart';
class ClubView extends StatelessWidget {
  const ClubView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: w,
                height: h*0.4,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                  image: DecorationImage(image: AssetImage("assets/img/engclub.jpg"),fit: BoxFit.cover)
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: w,
                    height: h,
                  ),
                  Positioned(
                    bottom: h*0.05,
                    right: w*0.05,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ClubApplicationForm(),
                            ));
                      },
                      child: Container(
                        width: w*0.4,
                        height: h*0.06,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: w*0.03,),
                            Text("Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(width: w*0.02,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                child: Center(
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
