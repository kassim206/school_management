import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:school_management/core/globel_variable.dart';

import 'login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
            width: w,
            height: h,
            color: Colors.yellowAccent,
            child:  Padding(
              padding:  EdgeInsets.only(left: w * .078, right: w * .078),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: h * .1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: w * .042,
                            child: const Center(
                                child: Icon(
                                  Icons.arrow_circle_left_rounded,
                                  color: Colors.yellow,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: w * .03,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: h * .007),
                          child: Text(
                            'Back',
                            style: GoogleFonts.lexend(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * .82,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello there!\nLet’s get introduced.',
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: w * .06,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: h * .034375,
                        ),
                        Text(
                          'What’s your name?',
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: w * .034,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: h * .006875,
                        ),
                        Container(
                          height: h * .06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: w * .028),
                            child: TextFormField(
                              style: GoogleFonts.poppins(
                                  color: Color(0xffBBC5CD),
                                  fontSize: w * .039),
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Full name",
                                hintStyle: GoogleFonts.poppins(
                                    color: Color(0xffBBC5CD),
                                    fontSize: w * .039),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * .032,
                        ),
                        Text(
                          'What’s your email?',
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: w * .034,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: h * .006875,
                        ),
                        Container(
                          // height: h*.06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: w * .028),
                            child: TextFormField(
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              style: GoogleFonts.poppins(
                                  color: Color(0xffBBC5CD),
                                  fontSize: w * .039),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Email",
                                hintStyle: GoogleFonts.poppins(
                                    color: Color(0xffBBC5CD),
                                    fontSize: w * .039),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * .032,
                        ),
                        Text(
                          'Your age and birth date',
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: w * .034,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: h * .006875,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: h * .06,
                              width: w * .2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: w * .028),
                                child: TextFormField(
                                  maxLines: 1,
                                  //maxLength: 2,
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  style: GoogleFonts.poppins(
                                    color: Color(0xffBBC5CD),
                                    fontSize: w * .039,
                                  ),
                                  keyboardType: TextInputType.number,
                                  // validator: (value) {
                                  //   if (value == null) {
                                  //     return 'Please enter your age.';
                                  //   }
                                  //   final ageValue = int.tryParse(value)??15;
                                  //   if (ageValue < 15 || ageValue > 99) {
                                  //     return 'Please enter a valid age between 15 and 99.';
                                  //   }
                                  //   return null; // Return null if the input is valid
                                  // },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    hintText: "Age",
                                    hintStyle: GoogleFonts.poppins(
                                      color: Color(0xffBBC5CD),
                                      fontSize: w * .039,
                                    ),

                                  ),
                                ),

                              ),
                            ),
                            InkWell(
                              onTap: ()  {},
                              child: Container(
                                height: h * .06,
                                width: w * .55,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Row(
                                  children: [

                                    Container(
                                      width: w * .47,
                                      child: Padding(
                                        padding:
                                        EdgeInsets.only(left: w * .028),
                                        child: Text(
                                           'Date | Month | Year',
                                          style: GoogleFonts.lexend(
                                              fontWeight: FontWeight.w500,
                                              fontSize: w * .034,
                                              color: Color(0xffBBC5CD)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h * .034375,
                        ),
                        Text(
                          'Phone Number',
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: w * .034,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: h * .006875,
                        ),
                        Container(
                          height: h * .06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: w * .028),
                            child: TextFormField(
                              obscureText: true,
                              style: GoogleFonts.poppins(
                                  color: Color(0xffBBC5CD),
                                  fontSize: w * .039),
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Phone number",
                                hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xffBBC5CD),
                                    fontSize: w * .039),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * .0205,
                        ),
                        Container(
                          height: h * .06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: w * .028),
                            child: TextFormField(
                              obscureText: true,
                              style: GoogleFonts.poppins(
                                  color: Color(0xffBBC5CD),
                                  fontSize: w * .039),
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Password",
                                hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xffBBC5CD),
                                    fontSize: w * .039),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * .0205,
                        ),
                        Container(
                          height: h * .06,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: w * .028),
                            child: TextFormField(
                              obscureText: true,
                              style: GoogleFonts.poppins(
                                  color: Color(0xffBBC5CD),
                                  fontSize: w * .039),
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Confirm Password",
                                hintStyle: GoogleFonts.poppins(
                                    color: Color(0xffBBC5CD),
                                    fontSize: w * .039),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: h * .075,
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage()),
                          );

                        },
                        child: Container(
                          height: h * .06,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color: Color(0xff343434)),
                          child: Center(
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.lexend(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
          ],
        ),
      ),
    );
  }
}
