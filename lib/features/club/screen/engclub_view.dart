import 'package:flutter/material.dart';
import '../../profile/account_screen.dart';
import 'club_applyForm.dart';
import 'events_eng.dart'; // Assuming this is a valid import

class ClubView extends StatelessWidget {
  const ClubView({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage("assets/img/engclub.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Text(
                  "English clubs come in many different guises. What they do"
                      " all have in common, however, is that they provide an opportunity"
                      " for English language learners to practise using English in a"
                      " relaxed and friendly setting. They can make an excellent"
                      " contribution to student life at a university language "
                      "centre, a state school or at a private language school, "
                      "for example. English clubs"
                      " give students a chance to practice English"
                      " in a relaxed, informal environment, and to meet new people.",
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Container(
              width: MediaQuery.of(context).size.width * 0.65,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Image.asset(
                "assets/img/engimg.webp",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ClubApplicationForm(),
            ),
          );
        },
        label: Text("Join"),
        icon: Icon(Icons.add_circle),
      ),
    );
  }
}
