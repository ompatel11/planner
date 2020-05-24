import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/Constants/constants.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: h * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Schedule Management",
                      style: GoogleFonts.comfortaa(
                        fontSize: 20,
                        color: blueThemeColor,
                        fontWeight: FontWeight.bold
                      ),),
                      Text(" App",
                      style: GoogleFonts.comfortaa(
                        fontSize: 20,
                      ),)
                    ],
                  ),
                ),
                SizedBox(height: h * 0.02),
                Text("Welcome Back",
                style: GoogleFonts.lora(
                  fontSize:45,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400
                ),),
                SizedBox(height: 40.0),
                Form(
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal:w * 0.08),
                    child: Column(
                      children: [
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
                        SizedBox(height: 40.0),
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
                          height: 40.0,
                        ),
                        GestureDetector(
                          onTap: (){
                            print("Hello");
                          },
                          child: Container(
                          width: 220,
                          height: 50,
                          decoration: BoxDecoration(
                            color:blueThemeColor,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                color: blueThemeColor.withOpacity(0.4),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(1, 5), // changes position of shadow
                                ),
                            ],
                            
                          ),
                          child: Center(child: Text("Log In",
                          style: GoogleFonts.comfortaa(
                            fontSize: 28,
                            color: Colors.white
                            )),
                          ),
                      ),
                        ),
                      SizedBox(
                        height: 30.0
                      ),
                      Text("Forgot Password?",
                      style: GoogleFonts.comfortaa(
                        fontSize: 18,
                        color: blueThemeColor,
                        fontWeight: FontWeight.w800
                      ),)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 150,
                        height: 55,
                        decoration: BoxDecoration(color: Colors.white,
                        border: Border.all(color:Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20),
                          child: Row(
                            children: [
                              FaIcon(FontAwesomeIcons.facebook,size: 30,color: Color(0xff0A4085),),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text("Sign In",
                              style: GoogleFonts.comfortaa(
                                color: Color(0xff0A4085),
                                fontSize: 18
                              ),)
                            ],
                          ),
                        )
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        width: 150,
                        height: 55,
                        decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: Border.all(color:Colors.grey)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20),
                          child: Row(
                            children: [
                              FaIcon(FontAwesomeIcons.googlePlus,size: 30,color: Color(0xffCF3636),),
                              SizedBox(
                                  width: 10.0,
                                ),
                              Text("Sign In",
                              style: GoogleFonts.comfortaa(
                                color: Color(0xffCF3636),
                                fontSize: 18
                              ),)
                            ],
                          ),
                        )
                      ),
                    ),
                    
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",
                          style: GoogleFonts.comfortaa(
                            fontSize: 18
                          ),),
                      GestureDetector(
                        onTap: (){
                          Navigator.popAndPushNamed(context, '/signup');
                        },
                        child: Text("Sign Up",
                        style: GoogleFonts.comfortaa(
                          fontSize:20,
                          color: blueThemeColor,
                          fontWeight: FontWeight.w600
                        ),),
                      )
                    ],
                  ),
                )
              ],
            )
          ),
        ),
    );
  }
}