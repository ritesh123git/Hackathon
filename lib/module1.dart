import 'package:flutter/material.dart';
void main() => runApp( module1(),);

class module1 extends StatefulWidget {
  module1({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<module1> {
  double _c1height=50;
  double _c1width=500;
  Color _c1color=Colors.grey;

  double _c2height=50;
  double _c2width=500;
  Color _c2color=Colors.grey;

  double _c3height=50;
  double _c3width=500;
  Color _c3color=Colors.grey;

  double _c4height=50;
  double _c4width=500;
  Color _c4color=Colors.grey;

  double _c5height=50;
  double _c5width=500;
  Color _c5color=Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Optics'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50,),
            Ink(
                child: InkWell(
                  child: Container(
                    width:_c1width,
                    height:_c1height,
                    child: Center(child: Text('topic 1',style: TextStyle(fontSize: 38,color: Colors.red),)),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.white54),
                      borderRadius: BorderRadius.circular(20),
                      color:_c1color,
                    ),
                  ),
                  onTap: () {
                    setState(() {
                        _c1height=55;
                        _c1width=505;
                        _c1color=Colors.green;
                    });
                  },
                )),SizedBox(height: 15,),
            Ink(
                child: InkWell(
                  child: Container(
                    width: _c2width,
                    height: _c2height,
                    child: Center(child: Text('topic 2',style: TextStyle(fontSize: 38,color: Colors.red),)),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.white54),
                      borderRadius: BorderRadius.circular(20),
                      color: _c2color,
                    ),
                  ),
                  onTap: ()  {
                    setState(() {
                      _c2height = 55;
                      _c2width = 505;
                      _c2color= Colors.green;

                    });
                  },
                )),SizedBox(height: 15,),
            Ink(
                child: InkWell(
                  child: Container(
                    width: _c3width,
                    height: _c3height,
                    child: Center(child: Text('topic 3',style: TextStyle(fontSize: 38,color: Colors.red),)),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.white54),
                      borderRadius: BorderRadius.circular(20),
                      color:_c3color,
                    ),
                  ),
                  onTap: ()  {
                    setState(()  {
                      _c3height = 55;
                      _c3width = 505;
                     _c3color= Colors.green;

                    });
                  },
                )),SizedBox(height: 15,),
            Ink(
                child: InkWell(
                  child: Container(
                    width: _c4width,
                    height:_c4height,
                    child: Center(child: Text('topic 4',style: TextStyle(fontSize: 38,color: Colors.red),)),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.white54),
                      borderRadius: BorderRadius.circular(20),
                      color: _c4color,
                    ),
                  ),
                  onTap: ()  {
                    setState(()  {
                      _c4height = 55;
                      _c4width= 505;
                      _c4color= Colors.green;

                    });
                  },
                )),SizedBox(height: 15,),
            Ink(
                child: InkWell(
                  child: Container(
                    width: _c5width,
                    height: _c5height,
                    child: Center(child: Text('topic 5',style: TextStyle(fontSize: 38,color: Colors.red),)),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.white54),
                      borderRadius: BorderRadius.circular(20),
                      color:_c5color,
                    ),
                  ),
                  onTap: ()  {
                    setState(()  {
                      _c5height = 55;
                     _c5width= 505;
                     _c5color = Colors.green;

                    });
                  },
                )),SizedBox(height: 15,),

          ],
        ),
      ),
    );
  }
}
