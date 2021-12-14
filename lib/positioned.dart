import 'package:flutter/material.dart';

class PositionedExample extends StatelessWidget {
  const PositionedExample({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                    spreadRadius: 3.0,
                    offset: Offset(10.0, 10.0),
                  ),
                ],
              ),
              alignment: Alignment.centerRight,
              width: 300,
              height: 300,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'Container 1',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10.0,
                    spreadRadius: 3.0,
                    offset: Offset(10.0, 10.0),
                  ),
                ],
              ),
              alignment: Alignment.centerRight,
              width: 300,
              height: 300,
              child: RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'Container 1',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
            Positioned(
                left: -15,
                top: -15,
                child: CircleAvatar(
                    child: Image.asset('assets/images/counter.jpg'))),
          ],
        ),
      ),
    );
  }
}
