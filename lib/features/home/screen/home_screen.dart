// Import necessary packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:draggable_home/draggable_home.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/globel_variable.dart';
import '../../Quiz/quiz.dart';
import '../../auth/screen/login_page.dart';
import '../../club/screen/club_screen.dart';
import '../../courses/screen/course_screen.dart';
import '../../library/screen/notes.dart';
import '../../location/screen/location_screen.dart';
import '../../post/post_1.dart';
import '../../profile/profile_screen.dart';
// Assuming you have your other classes imported

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      headerExpandedHeight: 0.3,
      curvedBodyRadius: w * 0.10,
      leading: buildLeadingWidget(),
      title: buildTitleWidget(),
      centerTitle: false,
      actions: buildActionWidgets(),
      headerWidget: headerWidget(context),
      body: buildBodyWidgets(),
    );
  }

  Widget buildLeadingWidget() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Center(
        child: Bounce(
          onPressed: () {},
          duration: const Duration(milliseconds: 100),
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen(),));
            },
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/img/profile.jpg'),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTitleWidget() {
    return Text(
      'Hello Hazel!',
      style: GoogleFonts.lexend(
        fontWeight: FontWeight.w400,
        fontSize: w * 0.04,
        color: Colors.black,
      ),
    );
  }

  List<Widget> buildActionWidgets() {
    return [
      GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                  actionsAlignment: MainAxisAlignment.spaceEvenly,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  title: const Center(
                      child: Column(
                        children: [
                          Text(
                            "Logout",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Are You Sure?",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ],
                      )),
                  actions: <Widget>[
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Colors.indigo),
                        ),
                        style: TextButton.styleFrom(
                            elevation: 5,
                            minimumSize: const Size(128, 46),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                    ElevatedButton(
                        onPressed: () {
                          GoogleSignIn().signOut().then((value) async {
                            final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                            await prefs.remove('isLogged');

                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                                    (route) => false);
                          });
                        },
                        child: const Text(
                          "Yes",
                          style: TextStyle(color: Colors.red),
                        ),
                        style: TextButton.styleFrom(
                            elevation: 5,
                            minimumSize: const Size(128, 46),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ))),
                  ]);
            },
          );
        },
        child: Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(123, 0, 0, 0),
                  blurRadius: 0.5,
                  spreadRadius: 0,
                  offset: Offset(0, 2), // shadow direction: bottom right
                )
              ],
            ),
            child: Icon(
              Icons.logout,
              color: Colors.red,
              size: 20,
            ) // child widget, replace with your own
        ),

      ),
      SizedBox(width: 10,)
    ];
  }
  Widget headerWidget(BuildContext context) {
    return Container(
      color: Colors.blue.shade900,
      child: Column(
        children: [
          SizedBox(
            height: h * 0.022,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: w * 0.07,
                  backgroundImage: const AssetImage('assets/img/profile.jpg'),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hello User',
                style: GoogleFonts.lexend(
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.07,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: h * 0.025,
              ),
              Padding(
                padding: EdgeInsets.only(left: w * 0.1, right: h * 0.1),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const CupertinoSearchTextField(
                    backgroundColor: Colors.transparent,
                    prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey),
                    style: TextStyle(color: Colors.white),
                    suffixIcon: Icon(
                      CupertinoIcons.xmark_circle_fill,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  List<Widget> buildBodyWidgets() {
    return [
      ListView(
        padding: const EdgeInsets.only(top: 0),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Container(),
          Padding(
            padding: EdgeInsets.all(w * 0.03),
            child: Text(
              'Welcome to!',
              style: GoogleFonts.lexend(
                fontWeight: FontWeight.w600,
                fontSize: w * 0.04,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(w * 0.025),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Bounce(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ClubPage()));
                          },
                          duration: const Duration(milliseconds: 100),
                          child: Container(
                            width: w,
                            height: h * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // image: const DecorationImage(
                              //     image: AssetImage("assets/img/location_logo.png"),
                              //
                              //     fit: BoxFit.contain
                              // ),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: Colors.grey.shade500,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/img/clb3.png",width: 60,),
                                SizedBox(height: 13,),
                                // Icon(Icons.class_outlined),
                                Text(
                                   'Club',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.025,
                      ),
                      Expanded(
                        child: Bounce(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CoursePage()));
                          },
                          duration: const Duration(milliseconds: 100),
                          child: Container(
                            width: w,
                            height: h * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: Colors.grey.shade500,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/img/courses-logo.png",width: 90,),
                                // SizedBox(height: h*0.02,),
                                Text(
                                  'Courses',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Bounce(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(),));
                          },
                          duration: const Duration(milliseconds: 100),
                          child: Container(
                            width: w,
                            height: h * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // image: const DecorationImage(
                              //     image: AssetImage("assets/img/location_logo.png"),
                              //
                              //     fit: BoxFit.contain
                              // ),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: Colors.grey.shade500,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/img/location_logo.png",width: 40,),
                                SizedBox(height: h*0.02,),
                                Text(
                                  'Location',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.025,
                      ),
                      Expanded(
                        child: Bounce(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)
                                => NotesScreen(),));
                          },
                          duration: const Duration(milliseconds: 100),
                          child: Container(
                            width: w,
                            height: h * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: Colors.grey.shade500,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/img/book (2).png",width: 100,),
                                // SizedBox(height: h*0.02,),
                                Text(
                                  'Library',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Bounce(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Community(),));
                          },
                          duration: const Duration(milliseconds: 100),
                          child: Container(
                            width: w,
                            height: h * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              // image: const DecorationImage(
                              //     image: AssetImage("assets/img/location_logo.png"),
                              //
                              //     fit: BoxFit.contain
                              // ),
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: Colors.grey.shade500,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/img/iconevent.png",width: 65,),
                                SizedBox(height: h*0.02,),
                                Text(
                                  'Events',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.025,
                      ),
                      Expanded(
                        child: Bounce(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage(),));
                          },
                          duration: const Duration(milliseconds: 100),
                          child: Container(
                            width: w,
                            height: h * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 2,
                                  spreadRadius: 0,
                                  color: Colors.grey.shade500,
                                  offset: Offset(5, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/img/quiz.png",width: 65,),
                                // SizedBox(height: h*0.02,),
                                Text(
                                  'Quiz',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ];
  }
}
