import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/features/library/screen/pdf_view.dart';

import '../../../core/globel_variable.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => PdfViewScreen(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: w,
                height: h*0.1,
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
                child: Center(child: Text("BSC Notes")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
