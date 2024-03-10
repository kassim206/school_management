import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../core/globel_variable.dart';
import 'club_applyForm.dart';
import 'events_eng.dart';
class ClubView extends StatelessWidget {
  const ClubView({super.key});

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
                    image: DecorationImage(image: AssetImage("assets/img/engclub.jpg"),fit: BoxFit.cover)
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
                                child: Text("English clubs come in many different guises. What they do"
                                    " all have in common, however, is that they provide an opportunity"
                                    " for English language learners to practise using English in a"
                                    "relaxed and friendly setting. They can make an excellent"
                                    " contribution to student life at a university language "
                                    "centre, a state school or at a private language school, "
                                    "for example. English clubs"
                                    " give students a chance to practice English"
                                    " in a relaxed, informal environment, and to meet new people."),
                              ),
                            ),
                          ),
                          SizedBox(height: h*0.02,),
                          Container(
                            width: w*0.65,
                            height: h*0.2,
                            child: Image.asset("assets/img/engimg.webp",fit: BoxFit.cover,),
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
                                EventsEng(),
                          ));
          }, label: Text("Join"),
      icon: Icon(Icons.add_circle,)),
    );
  }
}
