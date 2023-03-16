import 'dart:ui';

import 'package:flutter/cupertino.dart';

class color extends StatefulWidget {
  const color(int color, {Key? key}) : super(key: key);

  @override
  State<color> createState() => _colorState();
}

class _colorState extends State<color> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Map<int, Color> colorMap = {
  50: const Color.fromRGBO(147, 205, 72, .1),
  100: const Color.fromRGBO(147, 205, 72, .2),
  200: const Color.fromRGBO(147, 205, 72, .3),
  300: const Color.fromRGBO(147, 205, 72, .4),
  400: const Color.fromRGBO(147, 205, 72, .5),
  500: const Color.fromRGBO(147, 205, 72, .6),
  600: const Color.fromRGBO(147, 205, 72, .7),
  700: const Color.fromRGBO(147, 205, 72, .8),
  800: const Color.fromRGBO(147, 205, 72, .9),
  900: const Color.fromRGBO(147, 205, 72, 1),
};
// Green color code: 93cd48 and first two characters (FF) are alpha values (transparency)
//MaterialColor customColor = MaterialColor(0xFF93cd48, colorMap);