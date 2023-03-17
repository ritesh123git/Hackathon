import 'package:flutter/material.dart';
import 'first.dart';

void main() => runApp(const syllabus(),);

class syllabus extends StatelessWidget {
  const syllabus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xFFC7D2FC),
              title: Text('Syllabus',style: TextStyle(color: Colors.deepPurple),),
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 100,),
                  Container(
                    height: 50,
                    width: 260,
                  child:ElevatedButton(
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => First()));
                    },
                    child: Text('First Year'),
                  ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: 260,
                    child:ElevatedButton(
                      onPressed:(){},
                      child: Text('Second Year'),
                    ),
                  ),SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: 260,
                    child:ElevatedButton(
                      onPressed:(){},
                      child: Text('Third Year '),
                    ),
                  ),SizedBox(height: 30,),
                  Container(
                    height: 50,
                    width: 260,
                    child:ElevatedButton(
                      onPressed:(){},
                      child: Text('Final Year'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
