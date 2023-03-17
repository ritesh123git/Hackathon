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
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 70,8,8),
              child: Text('Modules',
                style: GoogleFonts.inder(
                  fontSize: 42,
                  color: Color(0xff4b1a7c),
                ),
              ),
            ),
            SizedBox(height: 30,),
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
                Text('Optics',
                  style: GoogleFonts.inder(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
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
                Text('ultrasonics',
                  style: GoogleFonts.inder(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),SizedBox(height: 20),
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
                Text('Quantum Physics',
                  style: GoogleFonts.inder(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
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
                Text('Nonophysics',
                  style: GoogleFonts.inder(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
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
                Text('Computer Instrumentation',
                  style: GoogleFonts.inder(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
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
                Text('Solid StatePhysics',
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



