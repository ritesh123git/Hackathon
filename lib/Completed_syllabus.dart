import 'package:flutter/material.dart';
import 'package:fresh_ui/Current_schedule.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home :syll()));
}

class syll extends StatefulWidget {
  const syll({Key? key}) : super(key: key);

  @override
  State<syll> createState() => _syllState();
}

class _syllState extends State<syll> {
  @override
  bool isChecked1=false;
  bool isChecked2=false;
  bool isChecked3=false;
  bool isChecked4=false;
  bool isChecked5=false;
  bool isChecked6=false;
  bool isChecked7=false;
  bool isChecked8=false;
  bool isChecked9=false;



  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Complete',
              style: GoogleFonts.inder(
                fontSize: 40,
                color: Color(0xff4b1a7c),
              ),
              ),
              Text('Syllabus',
                style: GoogleFonts.inder(
                  fontSize: 40,
                  color: Color(0xff4b1a7c),

                ),
              ),
              Row(
                children: [
                  Checkbox(
                    // title: Text('ek topic'),
                    //   checkColor: Colors.green,
                      value: isChecked1, onChanged:(val1){
                    setState(() {
                      isChecked1=val1!;
                    });
                  }),
                  Text('Introduction',
                  style: GoogleFonts.inder(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    // title: Text('ek topic'),
                    //   checkColor: Colors.green,
                      value: isChecked2, onChanged:(val2){
                    setState(() {
                      isChecked2=val2!;
                    });
                  }),
                  Text('Fresnels Half Period Zones',
                    style: GoogleFonts.inder(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    // title: Text('ek topic'),
                    //   checkColor: Colors.green,
                      value: isChecked3, onChanged:(val3){
                    setState(() {
                      isChecked3=val3!;
                    });
                  }),
                  Text('Zone Plate',
                    style: GoogleFonts.inder(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    // title: Text('ek topic'),
                    //   checkColor: Colors.green,
                      value: isChecked4, onChanged:(val4){
                    setState(() {
                      isChecked4=val4!;
                    });
                  }),
                  Text('Gratings',
                    style: GoogleFonts.inder(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    // title: Text('ek topic'),
                    //   checkColor: Colors.green,
                      value: isChecked5, onChanged:(val5){
                    setState(() {
                      isChecked5=val5!;
                    });
                  }),
                  Text('Diffraction At Straight Edge',
                    style: GoogleFonts.inder(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    // title: Text('ek topic'),
                    //   checkColor: Colors.green,
                      value: isChecked6, onChanged:(val6){
                    setState(() {
                      isChecked6=val6!;
                    });
                  }),
                  Text('Types of Diffraction',
                    style: GoogleFonts.inder(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    // title: Text('ek topic'),
                    //   checkColor: Colors.green,
                      value: isChecked7, onChanged:(val7){
                    setState(() {
                      isChecked7=val7!;
                    });
                  }),
                  Text('Types of Optics',
                    style: GoogleFonts.inder(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    // title: Text('ek topic'),
                    //   checkColor: Colors.green,
                      value: isChecked8, onChanged:(val8){
                    setState(() {
                      isChecked8=val8!;
                    });
                  }),
                  Text('Diffraction Double Slits',
                    style: GoogleFonts.inder(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    // title: Text('ek topic'),
                    //   checkColor: Colors.green,
                      value: isChecked9, onChanged:(val9){
                    setState(() {
                      isChecked9=val9!;
                    });
                  }),
                  Text('Plane Diffraction Grating',
                    style: GoogleFonts.inder(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}

