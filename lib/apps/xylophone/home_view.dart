import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  AudioCache audioCache = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            buildContainer(1, kolor: Color(0xffF44336)),
            buildContainer(2, kolor: Color(0xffF89703)),
            buildContainer(3, kolor: Color(0xffFEEA3B)),
            buildContainer(4, kolor: Color(0xff4CAF50)),
            buildContainer(5, kolor: Color(0xff2D9688)),
            buildContainer(6, kolor: Color(0xff2996F4)),
            buildContainer(7, kolor: Color(0xff9B27B1)),
          ],
        ),
      ),
    );
  }

  void playSound(int noteNumber) {
    audioCache.play('assets/notes/note$noteNumber.wav');
  }

  Widget buildContainer(int noteNumber, {@required Color kolor}) {
    return Expanded(
      child: Material(
        color: kolor,
        child: InkWell(
          onTap: () {
            playSound(noteNumber);
          },
        ),
      ),
    );
  }
}
