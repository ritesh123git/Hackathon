import 'package:flutter/material.dart';
import 'module1.dart';



void main()=> runApp(const first(),);
class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Year'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Container(
              height: 50,
              width: 260,
              child:ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Module1()),);
                },
                child: Text('Module 1',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                style: ElevatedButton.styleFrom(primary: Colors.purpleAccent) ,
              ),
            ),SizedBox(height: 20,),
            Container(
              height: 50,
              width: 260,
              child:ElevatedButton(
                onPressed:(){},
                child: Text('Module 1',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                style: ElevatedButton.styleFrom(primary: Colors.purpleAccent) ,
              ),
            ),SizedBox(height: 20,),
            Container(
              height: 50,
              width: 260,
              child:ElevatedButton(
                onPressed:(){},
                child: Text('Module 1',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                style: ElevatedButton.styleFrom(primary: Colors.purpleAccent) ,
              ),
            ),SizedBox(height: 20,),
            Container(
              height: 50,
              width: 260,
              child:ElevatedButton(
                onPressed:(){},
                child: Text('Module 1',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                style: ElevatedButton.styleFrom(primary: Colors.purpleAccent) ,
              ),
            ),SizedBox(height: 20,),
            Container(
              height: 50,
              width: 260,
              child:ElevatedButton(
                onPressed:(){},
                child: Text('Module 1',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                style: ElevatedButton.styleFrom(primary: Colors.purpleAccent) ,
              ),
            ),SizedBox(height: 20,),
            Container(
              height: 50,
              width: 260,
              child:ElevatedButton(
                onPressed:(){},
                child: Text('Module 1',style:TextStyle(fontSize: 20,color: Colors.deepPurple)),
                style: ElevatedButton.styleFrom(primary: Colors.purpleAccent) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Module1 extends StatelessWidget {
  const Module1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return module1();
  }
}



