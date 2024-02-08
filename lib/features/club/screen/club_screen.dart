import 'package:flutter/material.dart';
import '../../../core/globel_variable.dart';
import '../../home/widget/club_data.dart';
import 'clun_view.dart';

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
        itemCount: homeClubPageData.length,
        separatorBuilder: (context, index) => SizedBox(height: 8.0),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ClubView(),));
            },
            child: Container(
              height: h * 0.095,
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
              child: Center(child: Text(  homeClubPageData[index].clubname,
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
            ),
          );
        },
      ),
    );
  }
}
