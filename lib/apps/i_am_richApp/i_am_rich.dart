import 'package:flutter/material.dart';

void main() => runApp(DiamondPage());

class DiamondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diamond Page',
      home: Scaffold(
        backgroundColor: Colors.amber[600],
        // appBar: AppBar(
        //   title: Text('Material App Bar'),
        // ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'I\'m Rich!',
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Lobster'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                child: Image.asset(
                  'assets/images/diamond.jpg',
                  width: 300,
                  height: 300,
                ),
                alignment: Alignment.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
