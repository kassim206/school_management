import 'package:flutter/material.dart';

import '../../../core/globel_variable.dart';
import '../../home/widget/coursedata.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text('Courses'),
      ),
      body: ListView.separated(
        itemCount:homePageData.length,
        separatorBuilder: (context, index) => const SizedBox(height: 8.0),
        itemBuilder: (context, index) {
          return Container(
            height: h * 0.08,
            margin: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(child: Text(  homePageData[index].name,)),
          );
        },
      ),
    );
  }
}
