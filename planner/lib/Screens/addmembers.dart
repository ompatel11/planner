import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/Constants/constants.dart';

class AddMembers extends StatefulWidget {
  @override
  _AddMembersState createState() => _AddMembersState();
}

class _AddMembersState extends State<AddMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor:blueThemeColor,child: FaIcon(FontAwesomeIcons.plus),onPressed: (){Navigator.popAndPushNamed(context, '/homepage');},),
      appBar: AppBar(
        backgroundColor: blueThemeColor,
        actions: <Widget>[
          IconButton(icon: FaIcon(FontAwesomeIcons.check),color: Colors.white,onPressed: (){},)
        ],
        leading: IconButton(icon: FaIcon(FontAwesomeIcons.chevronLeft),onPressed: (){Navigator.popAndPushNamed(context, '/yearlyschedule');},) ,
        title: Text("Add Members",
        style: GoogleFonts.openSans(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontStyle: FontStyle.italic
          ),),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 40),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(backgroundImage: ExactAssetImage('assets/k.jpg'),
                        minRadius: 18,
                        maxRadius: 20,
                       ),
                       SizedBox(width: 20),
                        Text("Kratos V 1.0",
                        style: GoogleFonts.comfortaa(
                          fontSize: 22,
                        ),),
                        SizedBox(width: 140.0,),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(backgroundImage: ExactAssetImage('assets/k.jpg'),
                        minRadius: 18,
                        maxRadius: 20,
                       ),
                       SizedBox(width: 20),
                        Text("Kratos V 2.0",
                        style: GoogleFonts.comfortaa(
                          fontSize: 22,
                        ),),
                        SizedBox(width: 140.0,),
                      ],
                    ),
          ],
        ),
      ),
    );
  }
}