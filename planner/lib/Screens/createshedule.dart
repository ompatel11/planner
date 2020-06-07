import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/Constants/constants.dart';

class AddSchedule extends StatefulWidget {
  @override
  _AddScheduleState createState() => _AddScheduleState();
}

class _AddScheduleState extends State<AddSchedule> {
 
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
     bool weekcolor = false;
    
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: blueThemeColor,
        leading: IconButton(icon: FaIcon(FontAwesomeIcons.chevronLeft),onPressed: (){Navigator.popAndPushNamed(context, '/schedulesscreen');},
        ) ,
        title: Text("Create Schedule",
        style: GoogleFonts.openSans(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontStyle: FontStyle.italic
          ),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:w* 0.05),
        child: Column(
          children: [
            SizedBox(
              height: h *0.05,
            ),
            TextField(
              style: TextStyle(
                fontSize: 20.0, color: blueThemeColor),
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                    BorderRadius.all(Radius.circular(20.0))),
                     hintText: "Schedule Name"
                ),                            
              ),
            SizedBox(
              height: h *0.02,
            ),
            TextField(
              style: TextStyle(
                fontSize: 20.0, color: blueThemeColor),
                maxLines: 10,
                maxLength: 300,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius:
                    BorderRadius.all(Radius.circular(20.0))),
                     hintText: "Schedule Description"
                ),                            
              ),
              SizedBox(
              height: h *0.01,
              ),
              Row(
                children: [
                  Text("Select Type of schedule",
                  style: GoogleFonts.comfortaa(
                    fontSize: 18
                  ),),
                ],
              ),
              SizedBox(
              height: h *0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      print("1");
                      setState(() {
                        if (weekcolor==false){
                          print(weekcolor);
                          return weekcolor=true;
                        }
                        else{
                          print(weekcolor);
                          return weekcolor=false;
                        }
                       });
                    },
                    child: Container(
                      height: 35,
                      width: 100,
                      child: Center(child: Text("Weekly")),
                      decoration: BoxDecoration(
                        border: Border.all(color:textThemeColor),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: weekcolor==true? blueThemeColor: Colors.white
                      ),
                    ),
                    
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (weekcolor==false){
                          print(weekcolor=true);
                          return weekcolor=true;
                        }
                        else{
                          print(weekcolor);
                          print(weekcolor=false);
                          return weekcolor=false;
                        }
                       });
                    },
                    child: Container(
                      height: 35,
                      width: 100,
                      child: Center(child: Text("Yearly")),
                      decoration: BoxDecoration(
                        border: Border.all(color:textThemeColor),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: weekcolor==true? blueThemeColor: Colors.white
                      ),
                    ),
                    
                  )
                ],
              ),
              SizedBox(
                height: h * 0.06,
              ),
              GestureDetector(
                child: Container(
                  height: 55,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: blueThemeColor,
                  ),
                  child: Center(child: Text("Create Schedule",
                  style: GoogleFonts.comfortaa(
                    color: Colors.white,
                    fontSize: 18,
                    fontStyle: FontStyle.italic
                  ),)),
                ),
              )
          ],
        ),
      ),
      
    );
  }
}