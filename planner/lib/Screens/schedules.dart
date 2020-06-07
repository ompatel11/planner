import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:planner/Constants/constants.dart';

class Schedulesscreen extends StatefulWidget {
  @override
  _SchedulesscreenState createState() => _SchedulesscreenState();
}

class _SchedulesscreenState extends State<Schedulesscreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: h * 0.3,
              decoration: BoxDecoration(
                color: blueThemeColor,
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(45),bottomRight:Radius.circular(45)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                     padding:  EdgeInsets.only(top:h * 0.1),
                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(icon: FaIcon(FontAwesomeIcons.chevronLeft,color: Colors.white,size:32), onPressed: (){
                            Navigator.popAndPushNamed(context, '/homepage');
                          }),
                          IconButton(icon: FaIcon(FontAwesomeIcons.plus,size:30,color: Colors.white,), onPressed: (){Navigator.popAndPushNamed(context, '/addschedule');})
                        ],
                      ),
                   ),
                   Padding(
                     padding:  EdgeInsets.only(top:h*0.04,left:w * 0.08),
                     child: Text("Schedules",
                     style: GoogleFonts.openSans(
                        fontSize: 45,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontStyle: FontStyle.italic
                     ),),
                   )
                ],
              ),
            ),
          ),
          Align(
            child: Padding(
              padding:  EdgeInsets.only(top:h*0.32,left: w * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Yearly Schedules",
                  style: GoogleFonts.openSans(
                    fontSize: 30,
                    color: textThemeColor,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0
                  ),),
                  SizedBox(height: 15.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                              decoration: BoxDecoration(
                                color: redTaskColor,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.45),
                                spreadRadius: 0.5,
                                blurRadius: 6,
                                offset: Offset(4, 5), 
                              )]
                              ),
                              width: 152,
                              height: 180,
                              child: Column(
                                children: [
                                  SizedBox(height:25),
                                  CircularPercentIndicator(
                                    radius: 70,
                                    lineWidth: 5.0,
                                    percent: 0.7,
                                    center: Text("70%",style: GoogleFonts.openSans(
                                      color: Colors.white
                                    )),
                                    backgroundColor: redTaskColor,
                                    progressColor: Colors.white,
                                    ),
                                    SizedBox(height: 10.0,),
                                  Text("Practicals",
                                  style: GoogleFonts.openSans(
                                    fontSize: 24,
                                    color: Colors.white
                                  )),
                                  Text("2nd Year Practicals",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    color: Colors.white
                                  ))
                                ], 
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: purpleTaskColor,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.45),
                                spreadRadius: 0.5,
                                blurRadius: 6,
                                offset: Offset(4, 5), 
                              )]
                              ),
                              width: 152,
                              height: 180,
                              child: Column(
                                children: [
                                  SizedBox(height:25),
                                  CircularPercentIndicator(
                                    radius: 70,
                                    lineWidth: 5.0,
                                    percent: 0.4,
                                    center: Text("40%",style: GoogleFonts.openSans(
                                      color: Colors.white
                                    )),
                                    backgroundColor: purpleTaskColor,
                                    progressColor: Colors.white,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("Practicals",
                                  style: GoogleFonts.openSans(
                                    fontSize: 24,
                                    color: Colors.white
                                  )),
                                  Text("3rd Year Practicals",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    color: Colors.white
                                  ))
                                ],
                              ),
                            ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
                  Text("Weekly Schedules",
                  style: GoogleFonts.openSans(
                    fontSize: 30,
                    color: textThemeColor,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0
                  ),),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                              decoration: BoxDecoration(
                                color: cyanTaskColor,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.45),
                                spreadRadius: 0.5,
                                blurRadius: 6,
                                offset: Offset(4, 5), 
                              )]
                              ),
                              width: 152,
                              height: 180,
                              child: Column(
                                children: [
                                  SizedBox(height:25),
                                  CircularPercentIndicator(
                                    radius: 70,
                                    lineWidth: 5.0,
                                    percent: 0.1,
                                    center: Text("10%",style: GoogleFonts.openSans(
                                      color: Colors.white
                                    )),
                                    backgroundColor: cyanTaskColor,
                                    progressColor: Colors.white,
                                    ),
                                    SizedBox(height: 10.0,),
                                  Text("Practicals",
                                  style: GoogleFonts.openSans(
                                    fontSize: 24,
                                    color: Colors.white
                                  )),
                                  Text("2nd Year Practicals",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    color: Colors.white
                                  ))
                                ], 
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: greenTaskColor,
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.45),
                                spreadRadius: 0.5,
                                blurRadius: 6,
                                offset: Offset(4, 5), 
                              )]
                              ),
                              width: 152,
                              height: 180,
                              child: Column(
                                children: [
                                  SizedBox(height:25),
                                  CircularPercentIndicator(
                                    radius: 70,
                                    lineWidth: 5.0,
                                    percent: 0.4,
                                    center: Text("40%",style: GoogleFonts.openSans(
                                      color: Colors.white
                                    )),
                                    backgroundColor: greenTaskColor,
                                    progressColor: Colors.white,
                                  ),
                                  SizedBox(height: 10.0,),
                                  Text("Practicals",
                                  style: GoogleFonts.openSans(
                                    fontSize: 24,
                                    color: Colors.white
                                  )),
                                  Text("3rd Year Practicals",
                                  style: GoogleFonts.openSans(
                                    fontSize: 14,
                                    color: Colors.white
                                  ))
                                ],
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}