import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects/chatApp/chat_screen.dart';
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
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        // 'login_screen': (context) => LoginScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
        ChatScreenTest.id: (context) => ChatScreenTest(),
      },
    );
  }
}
