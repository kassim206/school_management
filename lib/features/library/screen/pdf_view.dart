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
        foregroundColor: Colors.white,
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => PdfPageView(),));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(child: Text("Syllabus")),
          ),
        ),
      ),
    );
  }
}
// class PdfViewScreen extends StatelessWidget {
//   const PdfViewScreen({Key? key}):super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: (){
//         Navigator.push(context, MaterialPageRoute(builder: (context) => PdfPageView(),));
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           height: 40,
//           width: double.infinity,
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.all(Radius.circular(10)),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: Offset(0, 3),
//               ),
//             ],
//           ),
//           child: Center(child: Text("Syllabus")),
//         ),
//       ),
//     );
//   }
// }
