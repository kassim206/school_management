import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/features/auth/screen/signUp_page.dart';

import '../../../core/globel_variable.dart';
import '../../home/screen/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       physics: BouncingScrollPhysics(),
        child: Column(
       children: [
  Container(
    height: h,
    width: w,
    decoration: const BoxDecoration(
        color: Colors.yellowAccent,
        // image: DecorationImage(
        //     image: AssetImage('assets/img/sch1.jpg'),
        //     fit: BoxFit.fill)
          ),
      child: Padding(
        padding:  EdgeInsets.only(left: w * 0.1, right: h * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * .01,
            ),
            Container(
              height: h * .8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login to the\nworld\nAl Jamia',
                    style: GoogleFonts.lexend(
                        fontSize: w * .1,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: h * .055,
                  ),
                  Container(
                    height: h * .065,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: w * .028),
                      child: TextFormField(

                        style: GoogleFonts.lexend(
                            color: Color(0xff9E9E9E),
                            fontWeight: FontWeight.w500,
                            fontSize: w * .035),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          hintText: "Email",
                          hintStyle: GoogleFonts.lexend(
                              color: Color(0xff9E9E9E),
                              fontWeight: FontWeight.w500,
                              fontSize: w * .035),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * .0275,
                  ),
                  Container(
                    height: h * .065,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: w * .028),
                      child: TextFormField(
                        style: GoogleFonts.lexend(
                            color: Color(0xff9E9E9E),
                            fontWeight: FontWeight.w500,
                            fontSize: w * .035),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Password",
                          hintStyle: GoogleFonts.lexend(
                              color: Color(0xff9E9E9E),
                              fontWeight: FontWeight.w500,
                              fontSize: w * .035),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * .0275,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                    child: Container(
                      height: h * .065,
                      decoration: BoxDecoration(
                          color: Colors.black,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: w * .055,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ));
                    },
                    child: Text(
                      'Sign up using Email',
                      style: GoogleFonts.lexend(
                          fontSize: w * .039,
                          decoration: TextDecoration.underline,
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * .03,
                ),
                Center(
                  child: Text(
                    'By continuing, you agree to our\nTerms of Service Privacy Policy  Content Policy',
                    style: GoogleFonts.lexend(
                        fontSize: w * .025, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            )
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
