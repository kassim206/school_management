import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/globel_variable.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
        title: Text("Location"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  _launchURL(
                      'https://www.google.com/maps/dir/University+of+Calicut,+Tirur+-+Calicut+Road,'
                          '+Thenhipalam,+Kerala/University+of+Calicut,+Tirur+-+Calicut+Rd,+Thenhipalam,'
                          '+Kerala+673635/@11.1340155,75.8128326,12z/data=!3m1!4b1!4m13!'
                          '4m12!1m5!1m1!1s0x3ba651d12ad11f7d:0xcdc1f327bd56c1a3!2m2!1d75.'
                          '8952354!2d11.1340267!1m5!1m1!1s0x3ba651d12ad11f7d:0xcdc1f327bd5'
                          '6c1a3!2m2!1d75.8952354!2d11.1340267?entry=ttu'
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: w,
                    height: h * 0.16,
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
                          width: w * 0.35,
                          height: h * 0.198,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage("assets/img/calicut.jpg"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                            ),
                          ),
                        ),
                        SizedBox(width: w * 0.02),
                        Expanded(
                          child: Container(
                            child: Text(
                              "University of, Kozhikode, Thenhipalam, Kerala 673636",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  _launchURL(
                      'https://www.google.com/maps/place/Al+Jamia+Arts+and+Science+College/@11.000781,76.222329,'
                          '15z/data=!4m6!3m5!1s0x3ba7cce05a42ee09:0x54f67afa3d76f84d!8m2!3d11.000781!4d76.222329!16s%2Fg%2F1hm57ws3c?entry=ttu'
                  );
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
void _launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
