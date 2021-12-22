import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/portfolio_screen.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff20232A),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                ),
              ),
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 150, horizontal: 50),
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
                        color: const Color(0xffE4DCD9).withOpacity(0.1),
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
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    // Navigator.pushReplacement(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const Cards(),
    //   ),
    // );
    Navigator.of(context).pushReplacementNamed(Cards.pushRoute);
  }
}
