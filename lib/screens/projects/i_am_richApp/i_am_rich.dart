import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects_page.dart';

void main() => runApp(DiamondPage());

class DiamondApp extends StatelessWidget {
  const DiamondApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiamondPage(),
    );
  }
}

class DiamondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[600],
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Center(
          child: Text(
            "Diamond Page",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductCard()),
          ),
        ),
      ),
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
    );
  }
}
