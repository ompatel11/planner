import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/Constants/constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: h * 0.3,
              decoration: BoxDecoration(
                color: blueThemeColor,
                borderRadius: BorderRadius.all(Radius.circular(45))
              ),
              child: Padding(
                padding:  EdgeInsets.only(top: h * 0.07),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(icon: FaIcon(FontAwesomeIcons.bars,color: Colors.white,size:32), onPressed: null),
                        IconButton(icon: FaIcon(FontAwesomeIcons.solidBell,size:30,color: Colors.white,), onPressed: null)
                      ],
                    ),
                    SizedBox(height: 10.0),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       SizedBox(width: 10.0,),
                       CircleAvatar(backgroundImage: ExactAssetImage('assets/k.jpg'),
                        minRadius: 30,
                        maxRadius: 45,
                       ),
                       Column(
                         children: [
                           Text("Welcome back Kratos,",
                           style: GoogleFonts.openSans(
                             fontSize: 26,
                             fontWeight: FontWeight.w400,
                             color: textThemeColor,
                             fontStyle: FontStyle.italic
                           ),),
                           Text("Your schedule is to kill Zeus today!!",
                               style: GoogleFonts.openSans(
                                 fontSize: 16,
                                 fontWeight: FontWeight.w400,
                                 color: textThemeColor,
                               ),),
                         ],
                       ),
                    ],
                   ),
                   
                  ],
                ),
              )
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: h * 0.32),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: w * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your Tasks",
                        style: GoogleFonts.openSans(
                          fontSize: 25
                        ),),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.45),
                                spreadRadius: 0.5,
                                blurRadius: 6,
                                offset: Offset(4, 5), 
                              )
                            ]
                          ),
                          child: CircleAvatar(
                            backgroundColor: blueThemeColor,
                            minRadius: 18,
                            maxRadius: 22,
                            child: Center(child: IconButton(icon: FaIcon(FontAwesomeIcons.calendarDay,color: Colors.white,size: 24,), onPressed: (){
                              Navigator.popAndPushNamed(context, '/schedulesscreen');
                            }))),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal:8.0),
                    child: Column(
                      children: [
                         SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          width: w,
                          height:55,
                          decoration: BoxDecoration(
                            color: redTaskColor,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 5), // changes position of shadow
                                ),
                              ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: Text("Study",
                                style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w400
                                ),),
                              ),
                              IconButton(icon: FaIcon(FontAwesomeIcons.times,color: Colors.white,), onPressed: null)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        //Second Task
                        Container(
                          width: w,
                          height:55,
                          decoration: BoxDecoration(
                            color: cyanTaskColor,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 5), // changes position of shadow
                                ),
                              ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: Text("Workout",
                                style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w400
                                ),),
                              ),
                              IconButton(icon: FaIcon(FontAwesomeIcons.times,color: Colors.white,), onPressed: null)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        //Third Task
                        Container(
                          width: w,
                          height:55,
                          decoration: BoxDecoration(
                            color: purpleTaskColor,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(2, 5), // changes position of shadow
                                ),
                              ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left:18.0),
                                child: Text("Prep For Test",
                                style: GoogleFonts.roboto(
                                  fontSize: 25,
                                  color: Colors.white,
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w400
                                ),),
                              ),
                              IconButton(icon: FaIcon(FontAwesomeIcons.times,color: Colors.white,), onPressed: null)
                            ],
                          ),
                        ),
                        SizedBox(height:20.0),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: w * 0.02),
                          child: Row(
                            children: [
                              Text("Weekly Schedules",
                              style: GoogleFonts.openSans(
                            fontSize: 25
                          )),
                            ],
                          ),
                        ),
                        SizedBox(height:10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
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
                            )
                          ],
                        )
                        
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],        
      )
    );
  }
}

