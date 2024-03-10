import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key,
    required this.icon,
    required this.title,})
      : super(key: key);
final IconData icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,color: Colors.white,size: 19,),
        Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),)
      ],
    );
  }
}
