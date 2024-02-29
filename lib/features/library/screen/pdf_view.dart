import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/features/library/screen/pdf_pageview.dart';

import '../../../core/globel_variable.dart';

class PdfViewScreen extends StatelessWidget {
  const PdfViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: h*0.01,),
        Expanded(child: GridView.count(
          shrinkWrap: true,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1/1.0,
          crossAxisCount: 3,
          children:
          List.generate(01, (index) {
            return MiniCard();
          },
          ),
        )
        )
          ],
        ),
      ),
    );
  }
}
class MiniCard extends StatelessWidget {
  const MiniCard({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => PdfPageView(),));
      },
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/pdfimg.png'),
              fit: BoxFit.cover
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
