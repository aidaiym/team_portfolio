import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/home_screen.dart';
import 'package:team_portfolio/screens/portfolio_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  const FlutterApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        Cards.pushRoute: (_) => const Cards(),
      },
    );
  }
}
