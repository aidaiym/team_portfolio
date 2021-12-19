import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects_page.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.purpleAccent.shade400),
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void _incrementCount() {
    setState(() {
      count++;
    });
  }

  void _decrementCount() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Center(
          child: Text('Counter App'),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductCard()),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomeWorkTwo(value: count),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 70.0,
                  right: 70.0,
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  'Number: $count',
                  style: TextStyle(
                    fontSize: 35.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                    onPrimary: Colors.white,
                  ),
                  onPressed: _decrementCount,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 26.0,
                      right: 26.0,
                    ),
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 45.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                  onPressed: _incrementCount,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 26.0,
                      right: 26.0,
                    ),
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 45.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}

class HomeWorkTwo extends StatelessWidget {
  final int value;
  HomeWorkTwo({this.value});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent.shade400,
        title: Text('Home work number 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 80.0,
                  right: 80.0,
                  top: 10,
                  bottom: 10,
                ),
                child: Text(
                  'Number: $value',
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
