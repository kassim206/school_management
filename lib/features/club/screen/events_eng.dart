import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/core/globel_variable.dart';

class EventsEng extends StatelessWidget {
  const EventsEng({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16)
                .copyWith(right: 0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 23,
                  backgroundImage: NetworkImage(
                      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/english-conversation-club-design-template-4728930e0bb10ddf203ca523e5aa3a77_screen.jpg?ts=1621456756"),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "userName",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.white),
                          )
                        ],
                      ),
                    )),
                IconButton(
                    color: Colors.white,
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                          child: ListView(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shrinkWrap: true,
                              children: [
                                'Delete',
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
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 8),
            child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: 'username',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    TextSpan(text: ' Hey guys description')
                  ]),
            ),
          ),
          SizedBox(
              height: h * 0.35,
              width: double.infinity,
              child: Image.network(
                  'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/english-conversation-club-design-'
                      'template-4728930e0bb10ddf203ca523e5aa3a77_screen.jpg?ts=1621456756')),
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.comment_outlined,
                  )),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("1,610 likes", style: TextStyle(color: Colors.grey)),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'View all 100 comments',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
