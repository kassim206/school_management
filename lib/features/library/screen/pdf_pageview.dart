import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfPageView extends StatelessWidget {
  const PdfPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          title: const Text("PDF View"),
        ),
        body:
        // link fron internet
        SfPdfViewer.network(
          "https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf",
        )
      // SfPdfViewer.asset("asset/proposal.pdf"),
    );
  }
}
