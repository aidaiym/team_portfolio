import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Cards extends StatelessWidget {
  const Cards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff20232A),
        body: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  FlutterLogo(
                    textColor: Colors.white,
                    size: 30.0,
                  ),
                  Text('Hello, Welcome to our team portfolio')
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff181A20),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff242833),
                      blurRadius: 12,
                      offset: Offset(1, 4), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  children: [Icon(Icons.flutter_dash), Text('Our Team')],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff181A20),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff242833),
                      blurRadius: 12,
                      offset: Offset(1, 4), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  children: [Icon(Icons.flutter_dash), Text('Our Team')],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff181A20),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff242833),
                      blurRadius: 12,
                      offset: Offset(1, 4), // Shadow position
                    ),
                  ],
                ),
                child: Column(
                  children: [Icon(Icons.flutter_dash), Text('Our Team')],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
