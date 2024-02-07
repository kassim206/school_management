import 'package:flutter/material.dart';

import '../../../core/globel_variable.dart';

class ClubPage extends StatelessWidget {
  const ClubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('Clubs'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => SizedBox(height: 8.0),
        itemBuilder: (context, index) {
          return Container(
            height: h * 0.2,
            margin: EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              image: const DecorationImage(image: AssetImage("assets/img/clubano.png"),fit: BoxFit.cover),
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
