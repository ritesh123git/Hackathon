import 'package:flutter/material.dart';

class Whatsapp extends StatefulWidget {
  final String id ;
  const Whatsapp({Key? key,required this.id}) : super(key: key);

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'+widget.id),
      ),
    );
  }
  Widget content(){
    //final Uri phonenumber= Uri.parse('+');
    final Uri whatsApp =Uri.parse('https://wa.me/1129389812398');
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (() async {

              }),
              child: Icon(
                Icons.call_rounded,
              ),
            )
          ],
        ),
      )
    );
  }
}
