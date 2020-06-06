import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/Constants/constants.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:planner/Screens/date.dart';

class YearlySchedule extends StatefulWidget {
  @override
  _YearlyScheduleState createState() => _YearlyScheduleState();
}


class _YearlyScheduleState extends State<YearlySchedule> {
  CalendarController _calendarController;
@override
void initState() {
  super.initState();
  _calendarController = CalendarController();
}


@override
void dispose() {
  _calendarController.dispose();
  super.dispose();
}
void _onDaySelected(DateTime day, List events) {
    print('CALLBACK: _onDaySelected');
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueThemeColor,
        leading: IconButton(icon: FaIcon(FontAwesomeIcons.chevronLeft),onPressed: (){print(1);},) ,
        title: Text("Yearly Schedules",
        style: GoogleFonts.comfortaa(
          fontSize: 30,
          color: textThemeColor,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.italic
        ),),
      ),
     
      body: Column( 
        children: [
          TableCalendar(calendarController: _calendarController,
          onDaySelected: _onDaySelected,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("Events",style: GoogleFonts.comfortaa(
                fontSize: 32,
                color: textThemeColor
              ),),
              IconButton(icon: FaIcon(FontAwesomeIcons.plusCircle,color: blueThemeColor,size: 36), onPressed: ()async{
                selectTime(context);
              })
            ],),
          )
        ],
      ),
    );
  }
}
Future<Null> selectTime(BuildContext context) async{
  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay picked;
    picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now()
      );
     
  }
