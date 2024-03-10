import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key});

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
                  _launchURL('https://www.google.com/maps/dir/University+of+Calicut,+Tirur+-+Calicut+Road,+Thenhipalam,+Kerala/University+of+Calicut,+Tirur+-+Calicut+Rd,+Thenhipalam,+Kerala+673635/@11.1340155,75.8128326,12z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x3ba651d12ad11f7d:0xcdc1f327bd56c1a3!2m2!1d75.8952354!2d11.1340267!1m5!1m1!1s0x3ba651d12ad11f7d:0xcdc1f327bd56c1a3!2m2!1d75.8952354!2d11.1340267?entry=ttu');
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100, // Set your desired height
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
                    child: Center(
                      child: Text(
                        "Open Google Maps",
                        style: TextStyle(fontSize: 20),
                      ),
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

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
