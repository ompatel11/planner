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
                           style: GoogleFonts.comfortaa(
                             fontSize: 26,
                             color: textThemeColor,
                             fontStyle: FontStyle.italic
                           ),),
                           Text("Your schedule is to kill Zues today!!",
                               style: GoogleFonts.comfortaa(
                                 fontSize: 14,
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
          )
        ],        
      )
    );
  }
}

