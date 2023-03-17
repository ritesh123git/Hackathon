import 'package:flutter/material.dart';
import 'package:fresh_ui/Current_schedule.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Padding(
          padding: const EdgeInsets.fromLTRB(90, 60, 8, 8),
          child: Container(
            alignment: Alignment.topCenter,
            child: Scaffold(
              body: Column(
                children: [
                  Text('Academic',
                  style: GoogleFonts.inder(
                    fontSize: 42,
                  ),

            ),
                  SizedBox(height: 20,),
                  Text('Calendar',
                    style: GoogleFonts.inder(
                      fontSize: 42,
                    ),

                  ),
                ],
              ),
          ),
      ),
        ),
      ),
    );
  }
}
