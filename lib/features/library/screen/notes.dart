import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/globel_variable.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade900,
        title: Text("Notes"),
      ),
      body: Column(
        children: [
          SizedBox(height: 8,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 200, // Adjust the height as needed
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 1"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uz8IDp-CDkIjROCVWWfmlCHKY4IkdltS";
                                launch(url);
                              },
                              child: Text("Semester 2"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uz8IDp-CDkIjROCVWWfmlCHKY4IkdltS";
                                launch(url);
                              },
                              child: Text("Semester 3"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                          ],
                        ),
                      ));
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: w,
                height: h * 0.1,
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
                child: Center(child: Text(" BCA ")),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 300, // Adjust the height as needed
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1wE5-tuusUqhW6sw8DHceLojVyfq1Qfm-";
                                launch(url);
                              },
                              child: Text("All Semester"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1wE5-tuusUqhW6sw8DHceLojVyfq1Qfm-";
                                launch(url);
                              },
                              child: Text("Semester 1"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 2"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 3"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                          ],
                        ),
                      ));
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: w,
                height: h * 0.1,
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
                child: Center(child: Text("BSc Physics")),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 300, // Adjust the height as needed
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1vklz1uhHOS7hqkE1-wZlMN_3XGoeXHKK";
                                launch(url);
                              },
                              child: Text("All Semester"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1vklz1uhHOS7hqkE1-wZlMN_3XGoeXHKK";
                                launch(url);
                              },
                              child: Text("Semester 1"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 2"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 3"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                          ],
                        ),
                      ));
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: w,
                height: h * 0.1,
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
                child: Center(child: Text("BSc chemistry")),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 300, // Adjust the height as needed
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1wV0trSQSZY8KFO2GqR3BimUX1P7SBU0X";
                                launch(url);
                              },
                              child: Text("All Semester"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1wV0trSQSZY8KFO2GqR3BimUX1P7SBU0X";
                                launch(url);
                              },
                              child: Text("Semester 1"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 2"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 3"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                          ],
                        ),
                      ));
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: w,
                height: h * 0.1,
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
                child: Center(child: Text("BSc Biology")),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 300, // Adjust the height as needed
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1vOgt83mQTdMt1ksk253PTrCGjYN-0O63";
                                launch(url);
                              },
                              child: Text("All Semester"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1vOgt83mQTdMt1ksk253PTrCGjYN-0O63";
                                launch(url);
                              },
                              child: Text("Semester 1"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 2"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 3"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                          ],
                        ),
                      ));
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: w,
                height: h * 0.1,
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
                child: Center(child: Text("BBA")),
              ),
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 300, // Adjust the height as needed
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("All Semester"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 1"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 2"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                String url =
                                    "https://drive.google.com/drive/folders/1uSw7RCPTcoJF2Hps9WFZKpTJXSd1Wsi0";
                                launch(url);
                              },
                              child: Text("Semester 3"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(
                                      MediaQuery.of(context).size.width, 50)),
                            ),
                          ],
                        ),
                      ));
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: w,
                height: h * 0.1,
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
                child: Center(child: Text("BSc cs")),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
