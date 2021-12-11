import 'package:flutter/material.dart';

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
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purpleAccent.shade400),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Counter App'),
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
                    left: 80.0,
                    right: 80.0,
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
