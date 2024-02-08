// Import necessary packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:draggable_home/draggable_home.dart';
import '../../../core/globel_variable.dart';
import '../../club/screen/club_screen.dart';
import '../../courses/screen/course_screen.dart';
import '../../library/screen/notes.dart';
import '../../location/screen/location_screen.dart';
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
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/img/profile.jpg'),
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
      SizedBox(
        width: w * 0.05,
      ),
    ];
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
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
                'Hello Hazel',
                style: GoogleFonts.lexend(
                  fontWeight: FontWeight.bold,
                  fontSize: w * 0.07,
                  color: Colors.black,
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
                Row(
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
                        child: Stack(
                          children: [
                            Container(
                              width: w,
                              height: h * 0.18,
                              decoration: BoxDecoration(
                                color: Colors.lightGreenAccent[100],
                                image: const DecorationImage(
                                  image: AssetImage("assets/img/tree.png"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Club',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: 20),
                                    ),
                                  )),
                            ),
                          ],
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
                        child: Stack(
                          children: [
                            Container(
                              width: w,
                              height: h * 0.18,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange[50],
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/img/courseimg.png"),
                                      fit: BoxFit.contain),
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Courses',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Bounce(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) =>  const ClubPage()));
                          },
                          duration: const Duration(milliseconds: 100),
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => LocationScreen(),));
                                },
                                child: Container(
                                  width: w,
                                  height: h * 0.18,
                                  decoration: BoxDecoration(
                                    color: Colors.pink[50],
                                    image: const DecorationImage(
                                        image: AssetImage("assets/img/location.jpeg"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Location',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.025,
                      ),
                      Expanded(
                        child: Bounce(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const ClubPage()));
                          },
                          duration: const Duration(milliseconds: 100),
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)
                                      => NotesScreen(),));
                                },
                                child: Container(
                                  width: w,
                                  height: h * 0.18,
                                  decoration: BoxDecoration(
                                    color: Colors.pink[50],
                                    image: const DecorationImage(
                                        image: AssetImage("assets/img/libimg.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text(
                                          'Library',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 20),
                                        ),
                                      )),
                                ),
                              ),
                            ],
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
