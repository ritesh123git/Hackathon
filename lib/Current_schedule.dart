import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Week.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 90),
                child: Column(

                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(onPressed: () {}, child: Text('Today',
                              style: GoogleFonts.inder(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 40),
                              backgroundColor:Color(0xffa48dd2), //background color of button
                              side: BorderSide(width:3,
                                color: Color(0xffa48dd2),
                              ), //border width and color
                              elevation: 1, //elevation of button
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(20)
                              ),

                            ),

                            ),
                          SizedBox(width: 20,),
                          ElevatedButton(onPressed: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => change()),
                            );},
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 40),
                              backgroundColor:Color(0xffe1dced), //background color of button
                              side: BorderSide(width:3,
                              color: Color(0xffe1dced),
                              ), //border width and color
                              elevation: 1, //elevation of button
                              shape: RoundedRectangleBorder( //to set border radius to button
                                  borderRadius: BorderRadius.circular(20)
                              ),

                            ), child: Text('Week',
                            style: GoogleFonts.inder(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.black,
                            ),
                          ),

                          ),
          ]),
                          Column(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.radio_button_unchecked,
                                          ),
                                          Text('10:00 - 11:00',
                                            style: TextStyle(
                                              fontSize: 22,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(8, 8,150, 8),
                                        child: Text('S.Y Div C',
                                        style: GoogleFonts.inder(
                                          fontSize: 32,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ),
                                ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.radio_button_unchecked,
                                          ),
                                          Text('11:15 - 12:15',
                                            style: TextStyle(
                                              fontSize: 22,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(8, 8,150, 8),
                                        child: Text('F.Y Div B',
                                          style: GoogleFonts.inder(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.radio_button_unchecked,
                                          ),
                                          Text('01:15 - 02:15',
                                            style: TextStyle(
                                              fontSize: 22,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(8, 8,150, 8),
                                        child: Text('F.Y Div A',
                                          style: GoogleFonts.inder(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.radio_button_unchecked,
                                          ),
                                          Text('02:30 - 3:30',
                                            style: TextStyle(
                                              fontSize: 22,
                                            ),
                                          ),
                                        ],
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(8, 8,150, 8),
                                        child: Text('S.Y Div B',
                                          style: GoogleFonts.inder(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.radio_button_unchecked,
                                          ),
                                          Text('04:15 - 06:15 (LAB)',
                                            style: TextStyle(
                                              fontSize: 22,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(8, 8,150, 8),
                                        child: Text('F.Y Div B',
                                          style: GoogleFonts.inder(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),


                            ],
                          ),
                            ],

                ),
              ),
          );
        }
      ),
    );
  }
}
