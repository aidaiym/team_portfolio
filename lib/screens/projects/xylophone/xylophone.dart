import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects_page.dart';

class PhoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: XylophoneApp(),
    );
  }
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  AudioCache audioCache = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Center(
          child: Text(
            "Xylophone App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductCard(),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const MusicButtonWidget(color: Color(0xffF44336), playIndex: 1),
          const MusicButtonWidget(color: Color(0xffF89703), playIndex: 2),
          const MusicButtonWidget(color: Color(0xffFEEA3B), playIndex: 3),
          const MusicButtonWidget(color: Color(0xff4CAF50), playIndex: 4),
          const MusicButtonWidget(color: Color(0xff2D9688), playIndex: 5),
          const MusicButtonWidget(color: Color(0xff2996F4), playIndex: 6),
          const MusicButtonWidget(color: Color(0xff9B27B1), playIndex: 7),
        ],
      ),
    );
  }
}

class MusicButtonWidget extends StatelessWidget {
  const MusicButtonWidget({
    Key key,
    this.playIndex,
    this.color,
  }) : super(key: key);

  final int playIndex;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => playSound(playIndex),
        child: Container(
          color: color,
        ),
      ),
    );
  }

  playSound(int index) {
    final AudioCache player = AudioCache();
    player.play('notes/note$index.wav');
  }
}
