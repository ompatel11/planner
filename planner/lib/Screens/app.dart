import 'package:flutter/material.dart';
import 'package:planner/Screens/login.dart';
import 'package:planner/Screens/signup.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return LoginScreen();
  }
}