import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class flash extends StatefulWidget {
  const flash({Key? key}) : super(key: key);

  @override
  State<flash> createState() => _flashState();
}

class _flashState extends State<flash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.blue,
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('ScheduleIt',textStyle: GoogleFonts.roboto(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
                ),

              ],
              isRepeatingAnimation: true,
            ),


          ),
        ),
      ),
    );
  }
}
