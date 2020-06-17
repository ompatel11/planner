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
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blueThemeColor,
        actions: <Widget>[
          IconButton(icon: FaIcon(FontAwesomeIcons.check),color: Colors.white,onPressed: (){Navigator.popAndPushNamed(context, '/addmembers');},)
        ],
        leading: IconButton(icon: FaIcon(FontAwesomeIcons.chevronLeft),onPressed: (){Navigator.popAndPushNamed(context, '/addschedule');},) ,
        title: Text("Yearly Schedules",
        style: GoogleFonts.openSans(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontStyle: FontStyle.italic
          ),),
      ),
     
      body: Container(
        child: Column( 
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
            ),
            SizedBox(height: 20,),
            Column(
              children: <Widget>[
                Container(
                  height: 55,
                  width: w * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(color:textThemeColor),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left:8.0,top: 17.0),
                    child: Row(
                      children: <Widget>[
                        Text("Event 1",
                        style: GoogleFonts.comfortaa(
                          fontSize: 22,
                        ),),
                        SizedBox(width: 140.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("From: 16th May'20",
                        style: GoogleFonts.acme(
                          fontSize: 12,
                        ),),
                        Text("To: 22th June'20",
                        style: GoogleFonts.acme(
                          fontSize: 12,
                          
                        ),),
                        SizedBox(
                          height: 5.0
                        ),
                          ],
                        
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 55,
                  width: w * 0.9,
                  decoration: BoxDecoration(
                    border: Border.all(color:textThemeColor),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(left:8.0,top: 17.0),
                    child: Row(
                      children: <Widget>[
                        Text("Event 2",
                        style: GoogleFonts.comfortaa(
                          fontSize: 22,
                        ),),
                        SizedBox(width: 140.0,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("From: 18h June'20",
                        style: GoogleFonts.acme(
                          fontSize: 12,
                        ),),
                        Text("To: 24th July'20",
                        style: GoogleFonts.acme(
                          fontSize: 12,
                        ),),
                        SizedBox(
                          height: 5.0
                        ),
                          ],
                        
                        )
                      ],
                    ),
                  ),
                ),
                
              ],
            )
          ],
        ),
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
