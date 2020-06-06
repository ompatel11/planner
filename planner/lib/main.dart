import 'package:flutter/material.dart';
import 'package:planner/Screens/app.dart';
import 'package:planner/Screens/home.dart';
import 'package:planner/Screens/login.dart';
import 'package:planner/Screens/mainlandingpage.dart';
import 'package:planner/Screens/schedules.dart';
import 'package:planner/Screens/signup.dart';
import 'package:planner/Screens/yearlyschedules.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/homepage':(context)=> Homepage(),
        '/landingpage':(context)=> Landingpage(),
        '/signup':(context)=> SignupScreen(),
        '/login':(context)=> LoginScreen(),
        '/schedulesscreen':(context) => Schedulesscreen(),
        '/yearlyschedule':(context) => YearlySchedule(),
      },
      home: Wrapper(),
    );
    // return StreamProvider<User>.value(
    //   value: AuthService().user,
    //     child: MaterialApp(
    //       theme: ThemeData.dark(),
    //       routes: {
    //         '/new_task': (context) => Add_task(),
    //         '/login': (context) => SignIn(),
    //         '/register': (context) => Register(),
    //         '/home':(context) => DefaultScreen(),
    //       },
    //     debugShowCheckedModeBanner: false,
    //     home:  Wrapper(),
    //   ),
    // );
  }
}