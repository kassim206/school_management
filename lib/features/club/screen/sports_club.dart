import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_scrolling_fab_animated/flutter_scrolling_fab_animated.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widget/eng_data.dart';
import '../widget/sports_data.dart';

class SporstsClub extends StatelessWidget {
  const SporstsClub({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController _scrollController = ScrollController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: ScrollingFabAnimated(
          color: Colors.green,
          width: 140,
          height: 50,
          icon: const Icon(
            Icons.add_circle,
            color: Colors.white,
            size: 20,
          ),
          text: const Text(
            'Join Whatsapp',
            style: TextStyle(color: Colors.white, fontSize: 10.0),
          ),
          onPress: () {
            String url =
                "https://chat.whatsapp.com/FklnJk3dRkT6DI58KYrwa3";
            launch(url);
          },
          scrollController: _scrollController,
          animateIcon: true,
          inverted: false,
          radius: 10.0,
        ),
        appBar: AppBar(
          actions: [
            Stack(
              children: [
                AnimatedButton(
                  onPress: () {
                    String url =
                        "https://chat.whatsapp.com/FklnJk3dRkT6DI58KYrwa3";
                    launch(url);
                  },
                  height: 40,
                  width: 100,
                  text: 'Join',
                  isReverse: true,
                  selectedTextColor: Colors.black,
                  transitionType: TransitionType.LEFT_BOTTOM_ROUNDER,
                  textStyle: TextStyle(fontSize: 12),
                  backgroundColor: Colors.green,
                  borderColor: Colors.white,
                  borderWidth: 1,
                ),Positioned(
                  top: 8,left: 5,
                  child: CircleAvatar(
                      radius: 15,
                      child: Image.asset('assets/png/whatsapp.png')),
                ),
              ],
            ),
          ],
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue.shade900,
          elevation: 0,
          title: Text(
            "Events",
            style: GoogleFonts.aladin(fontSize: 23),
          ),
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  controller: ScrollController(),
                  itemCount: img1.length,
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10), // Add a separator between items
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${img1[index]['description']},",
                                        style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black,fontSize: 16),
                                      )
                                    ],
                                  ),
                                )),
                            IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => Dialog(
                                      child: ListView(
                                          padding:
                                          const EdgeInsets.symmetric(vertical: 16),
                                          shrinkWrap: true,
                                          children: [
                                            'Share',
                                          ]
                                              .map((e) => InkWell(
                                            child: Container(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 12, horizontal: 16),
                                              child: Text(e),
                                            ),
                                          ))
                                              .toList()),
                                    ),
                                  );
                                },
                                icon: const Icon(Icons.more_vert))
                          ],
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.35, // Use MediaQuery to get screen height
                              width: double.infinity,
                              child: Image.asset(
                                img1[index]['image'], // Use img[index]['image'] to access the image URL
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 30,
                                width: 80,
                                color: Colors.indigo,
                                child: Center(child: Text("${img1[index]['date']}",style: TextStyle(color: Colors.white),)),
                              ),
                            )
                          ],
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
