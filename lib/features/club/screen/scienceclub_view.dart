import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:school_management/features/club/screen/science_club.dart';
import 'package:school_management/features/club/screen/sports_club.dart';
import '../../../core/globel_variable.dart';
import 'club_applyForm.dart';
import 'events_eng.dart';
class ScienceClubView extends StatelessWidget {
  const ScienceClubView({super.key});

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
                      image: DecorationImage(image: AssetImage("assets/png/sin5.jpg"),fit: BoxFit.cover)
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
                                    "Science clubs serve as hubs for enthusiasts to explore future"
                                        " technologies, medical advancements, and cutting-edge research."
                                        " Through hands-on experiments, discussions, and guest lectures,"
                                        " members engage with emerging trends in fields such as biotechnology,"
                                        " artificial intelligence, and space exploration."
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: h*0.02,),
                          Container(
                            width: w*0.65,
                            height: h*0.2,
                            child: Image.asset("assets/png/sinlogo.jpg",fit: BoxFit.cover,),
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
                      ScienceClub(),
                ));
          }, label: Text("Join"),
          icon: Icon(Icons.add_circle,)),
    );
  }
}
