import 'package:editable/editable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Current_schedule.dart';

class change extends StatelessWidget {
  const change({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 90),
          child: Column(children: [
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Todays',
                  style: GoogleFonts.inder(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 40),
                  backgroundColor:
                      Color(0xffa48dd2), //background color of button
                  side: BorderSide(
                    width: 3,
                    color: Color(0xffa48dd2),
                  ), //border width and color
                  elevation: 1, //elevation of button
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 40),
                  backgroundColor:
                      Color(0xffe1dced), //background color of button
                  side: BorderSide(
                    width: 3,
                    color: Color(0xffe1dced),
                  ), //border width and color
                  elevation: 1, //elevation of button
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                ),
                child: Text(
                  'Weeks',
                  style: GoogleFonts.inder(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ),
            ]),
            Text('Time Table',

            ),
          ]
          ),
        ),
      ),
    );
  }
}
