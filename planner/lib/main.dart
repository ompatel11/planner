import 'package:flutter/material.dart';
import 'package:planner/Screens/app.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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