import 'package:flutter/material.dart';
import 'syllabus.dart';
import 'attendence.dart';
import 'Schedule (1).dart';
import 'notification_services.dart';



class Home extends StatefulWidget {
  const Home({Key? key,this.title}) : super(key: key);

  final String? title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit(context);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              icon: new Image.asset(
                'images/user1.png',
              ),
              style: ButtonStyle(),
              onPressed: () {
                // do something here
              }),
          const SizedBox(
            width: 10,
          ),
        ],
        title: const Text(
          'Prof. Gopal',
          style: TextStyle(color: Colors.deepPurpleAccent),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'images/homepage.jpeg',
                width: 300,
                height: 290,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                width: 290,
                decoration: BoxDecoration(
                    color: const Color(0xFFACEEEA),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 5,
                        offset: Offset(
                          2,
                          2,
                        ),
                      )
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Schedule()),
                      );
                    },
                    child: const Text('Schedule',
                        style:
                            TextStyle(fontSize: 38, color: Colors.deepPurple))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 290,
                decoration: BoxDecoration(
                    color: Color(0xFFC7D2FC),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        offset: Offset(
                          2,
                          2,
                        ),
                      )
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Syllabus()),
                      );
                    },
                    child: const Text('Syllabus',
                        style:
                            TextStyle(fontSize: 38, color: Colors.deepPurple))),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 290,
                decoration: BoxDecoration(
                    color: Color(0xFFD0B9FF),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        offset: Offset(
                          2,
                          2,
                        ),
                      )
                    ]),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Attendence()),
                      );
                    },
                    child: const Text('Attendance',
                        style:
                            TextStyle(fontSize: 38, color: Colors.deepPurple))),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {

        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            label: 'Setting',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_rounded,
              color: Colors.grey,
            ),
            label: 'Calender',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book, color: Colors.grey),
            label: 'Modules',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_add_rounded,
              color: Colors.grey,
            ),
            label: 'Notifications',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Anshul();
  }
}

class Syllabus extends StatelessWidget {
  const Syllabus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const syllabus();
  }
}

class Present extends StatelessWidget {
  const Present({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Attendence();
  }
}
