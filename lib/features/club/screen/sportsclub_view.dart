import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school_management/features/club/screen/sports_club.dart';
import '../../../core/globel_variable.dart';
import 'club_applyForm.dart';

class SportsClubView extends StatelessWidget {
  const SportsClubView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: w,
                  height: h*0.4,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(image: AssetImage("assets/png/srt3.jpg"),fit: BoxFit.cover)
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      color: Colors.white,
                      width: w,
                      height: h*0.6,
                      child: Column(
                        children: [
                          SizedBox(height: h*0.02,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Container(
                                child: const Text(
                                    "Maintaining a balanced diet, incorporating regular workouts, and prioritizing rest are"
                                        " essential components of achieving optimal fitness and overall"
                                        " health. Consistency in exercise routines, alongside nutritious"
                                        " eating habits, supports physical strength, endurance, and mental well-being."
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: h*0.02,),
                          Container(
                            width: w*0.65,
                            height: h*0.2,
                            child: Image.asset("assets/png/srtlogo.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) =>
                      ClubApplicationForm(),
                ));
          }, label: Text("Join"),
          icon: Icon(Icons.add_circle,)),
    );
  }
}
