import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects/chatApp/chat_page.dart';
import 'package:team_portfolio/screens/projects/chatApp/home_page.dart';
import 'package:team_portfolio/screens/projects/chatApp/login_page.dart';
import 'package:team_portfolio/screens/projects/chatApp/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        ChatPage.id: (context) => ChatPage(),
      },
    );
  }
}
