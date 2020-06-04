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
    String svg = 'assets/Calendar.svg';
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical:h * 0.1,horizontal: 10),
              child: Text("Schedule It",
              style: GoogleFonts.comfortaa(
                fontSize:56,
                color: textThemeColor,
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
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),),
            SizedBox(height: h*0.1,),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.popAndPushNamed(context,'/login');
                  },
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:40.0),
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                      color:Color(0xffFFE082),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      boxShadow: [
                              BoxShadow(
                                color: blueThemeColor.withOpacity(0.5),
                                spreadRadius: 4,
                                blurRadius: 8,
                                offset: Offset(1, 2), 
                                ),
                            ],
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
              ],
            )
          ],
        ),
      ),
    );
  }
}

