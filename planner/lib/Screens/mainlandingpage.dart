import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/Constants/constants.dart';

class Landingpage extends StatefulWidget {
  @override
  _LandingpageState createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    String svg = 'assets/Group 30.svg';
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical:h * 0.1,horizontal: 10),
              child: Text("Schedule It",
              style: GoogleFonts.comfortaa(
                fontSize:52,
                fontWeight: FontWeight.w600
              ),),
            ),
            Padding(
              padding:  EdgeInsets.only(left: w*0.0),
              child: SvgPicture.asset(svg),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text("Come organize your schedule efficiently.",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 16
            ),),
            SizedBox(height: h*0.1,),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    print("Hello");
                  },
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:40.0),
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                      color:blueThemeColor,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                        child: Center(child: Text("Log In",
                          style: GoogleFonts.comfortaa(
                          fontSize: 36,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600
                        )),
                              
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal:60.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: 80,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Or',
                          style: GoogleFonts.comfortaa(
                              fontSize: 14.0,
                              color: blueThemeColor,
                              letterSpacing: 4.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          height: 1,
                          width: 80,
                          color: Colors.black,
                        )
                      ],
                    ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.popAndPushNamed(context,'/signup');
                  },
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:40.0),
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                      color:Color(0xFF6C63FF),
                      borderRadius: BorderRadius.all(Radius.circular(30))
                      ),
                        child: Center(child: Text("Sign Up",
                          style: GoogleFonts.comfortaa(
                          fontSize: 36,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600
                        )),
                              
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

