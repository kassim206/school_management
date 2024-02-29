import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/globel_variable.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Location"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UniversityMap(),));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: w,
                    height: h*0.16,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                        ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: w*0.35,
                          height: h*0.198,
                          decoration: BoxDecoration(
                              color: Colors.white,
                            image: DecorationImage(image:
                            AssetImage("assets/img/calicut.jpg"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12))
                          ),
                        ),
                        SizedBox(width: w*0.02,),
                        Expanded(
                          child: Container(
                            child: Text("University of, Kozhikode, Thenhipalam, Kerala 673636"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: w,
                  height: h*0.16,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: w*0.35,
                        height: h*0.198,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(image:
                            AssetImage("assets/img/aljamia.webp"),fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12))
                        ),
                      ),
                      SizedBox(width: w*0.02,),
                      Expanded(
                        child: Container(
                          child: Text(" Al Jamia Perinthalmanna - Nilambur Rd, Valamboor, Kerala 679322"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
class UniversityMap extends StatelessWidget {
  const UniversityMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: w,
            height: h,
            child: Image.asset("assets/img/map.jpg",fit: BoxFit.cover,),
          ),
          GestureDetector(
            onTap: (){
             // Navigator.push(context, MaterialPageRoute(builder: (context) =>  LocationScreen(),));
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                child: Center(child: Icon(Icons.arrow_back)),
                backgroundColor: Colors.blue.shade900,
              ),
            ),
          )
        ],
      ),
    );
  }
}
