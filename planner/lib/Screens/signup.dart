import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/Constants/constants.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body:  Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: h*0.1,bottom: 15),
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color:Colors.black87),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.calendarAlt,size: 80,color: blueThemeColor,)),
                ),
                
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Text("Sign Up",
                    style: GoogleFonts.comfortaa(
                      fontSize:28,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Form(
                child: Padding(
                  padding:  EdgeInsets.only(left:10.0,right:12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        style: TextStyle(
                        fontSize: 20.0, color: blueThemeColor),
                        decoration: InputDecoration(
                       border: OutlineInputBorder(
                            borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                              hintText: 'Name',
                              hintStyle: GoogleFonts.comfortaa(
                              fontSize: 15.0,
                              color: Colors.black,
                              letterSpacing: 4.0),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        style: TextStyle(
                        fontSize: 20.0, color: blueThemeColor),
                        decoration: InputDecoration(
                       border: OutlineInputBorder(
                            borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                              hintText: 'E-mail',
                              hintStyle: GoogleFonts.comfortaa(
                              fontSize: 15.0,
                              color: Colors.black,
                              letterSpacing: 4.0),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        style: TextStyle(
                        fontSize: 20.0, color: blueThemeColor),
                        decoration: InputDecoration(
                       border: OutlineInputBorder(
                            borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                              hintText: 'Password',
                              hintStyle: GoogleFonts.comfortaa(
                              fontSize: 15.0,
                              color: Colors.black,
                              letterSpacing: 4.0),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextField(
                        style: TextStyle(
                        fontSize: 20.0, color: blueThemeColor),
                        decoration: InputDecoration(
                       border: OutlineInputBorder(
                            borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                              hintText: 'Confirm Password',
                              hintStyle: GoogleFonts.comfortaa(
                              fontSize: 15.0,
                              color: Colors.black,
                              letterSpacing: 4.0),
                        ),
                      ),
                      SizedBox(
                        height: 45.0,
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        decoration: BoxDecoration(
                          color:blueThemeColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Center(child: Text("Sign Up",
                        style: GoogleFonts.comfortaa(
                          fontSize: 28,
                          )),
                        
                        ),
                      ),
                      SizedBox(
                        height:35.0
                      ),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children: [
                          Text("Already have an account?",
                          style:GoogleFonts.comfortaa(
                            fontSize: 18,
                          )),
                          GestureDetector(
                            onTap: (){
                              Navigator.popAndPushNamed(context, '/login');
                            },
                            child: Text(" Log In",
                            style: GoogleFonts.comfortaa(
                              fontSize: 18,
                              color: blueThemeColor,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),      
              )
              
            ],
          ),
        ),
      )
    );
  }
}