
import 'package:flutter/material.dart' ;

// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
void main(){
  WidgetsFlutterBinding.ensureInitialized();
  //Firebase.initializeApp(options: FirebaseOptions(apiKey: 'AIzaSyC2gRuZhhevG3Ed8MJb0YQA2_2XH3F-e1M',
  //     appId: '1:891567630162:web:d8a05c7bc849683172bc8b',
  //     messagingSenderId: '891567630162',
  //     projectId: 'fir-1-f27f8'));
  runApp(Anshul()) ;
}
class Anshul extends StatefulWidget {
  @override
  State<Anshul> createState() => _AnshulState();
}

class _AnshulState extends State<Anshul> {
  String? name  ;

  String? age ;

  TextEditingController nameController = TextEditingController();

  TextEditingController ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title : Row(
                children:  [
                  Text('Schedule'),
                ],
              ),
            ),
            body: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      decoration: const BoxDecoration(

                      ),
                        child: Expanded(
                          //flex: 7,
                          child: Center(
                            child: Table(
                                border: TableBorder.all(color: Colors.grey),
                                children: const [
                                  TableRow(children: [

                                    //Center(child: Text('')),
                                    Center(child: Text('10:15-11:15')),
                                    Center(child: Text('11:30-12:30')),
                                    Center(child: Text('1:30-2:30')),
                                    Center(child: Text('2:45-3:45')),
                                    Center(child: Text('4:00-5:00')),
                                  ]),
                                  TableRow(children: [
                                    Center(child: Text('Monday')),
                                    Center(child: Text('Maths')),
                                    Center(child: Text('Physics')),
                                    Center(child: Text('Mechanics')),
                                    Center(child: Text('LifeScience')),
                                  ]),
                                  TableRow(children: [
                                    Center(child: Text('Tuesday')),
                                    Center(child: Text('LifeScience')),
                                    Center(child: Text('Mechanics')),
                                    Center(child: Text('Maths')),
                                    Center(child: Text('Physics')),
                                  ]),
                                  TableRow(children: [
                                    Center(child: Text('Wednesday')),
                                    Center(child: Text('LifeScience')),
                                    Center(child: Text('Maths')),
                                    Center(child: Text('Physics')),
                                    Center(child: Text('Mechanics')),
                                  ]),
                                  TableRow(children: [
                                    Center(child: Text('Thursday')),
                                    Center(child: Text('Mechanics')),
                                    Center(child: Text('Maths')),
                                    Center(child: Text('Physics')),
                                    Center(child: Text('LifeScience')),
                                  ]),
                                  TableRow(children: [
                                    Center(child: Text('Friday')),
                                    Center(child: Text('Mechanics')),
                                    Center(child: Text('Maths')),
                                    Center(child: Text('Physics')),
                                    Center(child: Text('LifeScience')),
                                  ]
                                  ),
                                  TableRow(children: [
                                    Center(child: Text('Saturday')),
                                    Center(child: Text('Mechanics')),
                                    Center(child: Text('Maths')),
                                    Center(child: Text('Physics')),
                                    Center(child: Text('LifeScience')),
                                  ]
                                  ),
                                ],
                                ),
                          ),
                        ),
                      ),
                ],
              ),
            ),
           ),
        );
  }
}


