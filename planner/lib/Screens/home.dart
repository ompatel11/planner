import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/Constants/constants.dart';

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
      backgroundColor: blueThemeColor,
      body: Stack(
        children: [
          Container(
            child: ListView(
              children: [
                Row(
                  children: [
                    SizedBox(width:15.0),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Text("E")),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome Emma,",
                      style: GoogleFonts.robotoSlab(
                        fontSize:40,
                        color:Colors.white,
                      ),),
                      Text("Your schedule for today is clear.",
                      style: GoogleFonts.robotoSlab(
                        fontSize:16,
                        color:Colors.white,
                      ),),
                      SizedBox(height: 8.0,),
                      Text("Math Test is scheduled to Monday.",
                      style: GoogleFonts.robotoSlab(
                        fontSize:16,
                        color:Colors.white,
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:h * 0.1),
                  child: Container(
                    height: h * 0.7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                      color: Colors.white,
                    ),
                    
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: h * 0.35,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          print("GHe");
                        },
                        child: Container(
                          height: 133,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.grey)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              FaIcon(FontAwesomeIcons.solidCalendarAlt,size: 52,color: blueThemeColor,),
                              Text("Schedules",
                              style: GoogleFonts.comfortaa(
                                fontSize: 22,
                              ),)
                            ],),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      GestureDetector(
                        child: Container(
                          height: 133,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.grey)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              FaIcon(FontAwesomeIcons.pencilAlt,size: 52,color: blueThemeColor,),
                              Text("\t Create\nSchedules",
                              style: GoogleFonts.comfortaa(
                                fontSize: 22,
                              ),)
                            ],),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                        height: 30.0,
                      ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          print("GHe");
                        },
                        child: Container(
                          height: 133,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.grey)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              FaIcon(FontAwesomeIcons.chartLine,size: 52,color: blueThemeColor,),
                              Text("Analytics",
                              style: GoogleFonts.comfortaa(
                                fontSize: 22,
                              ),)
                            ],),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      GestureDetector(
                        child: Container(
                          height: 133,
                          width: 155,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            border: Border.all(color: Colors.grey)
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              FaIcon(FontAwesomeIcons.cog,size: 52,color: blueThemeColor,),
                              Text("Settings",
                              style: GoogleFonts.comfortaa(
                                fontSize: 22,
                              ),)
                            ],),
                          ),
                        ),
                      )
                    ],
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