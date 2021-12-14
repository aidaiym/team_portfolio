import 'package:flutter/material.dart';
import 'package:team_portfolio/home_screen.dart';
import 'package:team_portfolio/positioned.dart';
import 'package:team_portfolio/projects_page.dart';
import 'dart:async';

void main() {
  runApp(const Cards());
}

class FirstPage extends StatefulWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff20232A),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 150, horizontal: 50),
                    child: Image.asset('assets/images/logo_flutter.jpg'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Container(
                      child: Text(
                        'F',
                        style: TextStyle(
                          color: Color(0xffE4DCD9).withOpacity(0.1),
                          fontSize: 200,
                          fontFamily: 'neon',
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ProductCard()));
  }
}
