import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:team_portfolio/projects_page.dart';

import 'card_widgets.dart';

class Cards extends StatelessWidget {
  const Cards({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff20232A),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 25.0),
                      Image.asset(
                        'assets/images/logo.png',
                        width: 40,
                        height: 40,
                        color: Colors.white,
                      ),
                      const SizedBox(height: 15.0),
                      SizedBox(
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 15.0,
                            // fontFamily: 'neon',
                          ),
                          child: AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText(
                                'Hello,\nWelcome to\nour team portfolio',
                                speed: const Duration(milliseconds: 50),
                              ),
                            ],
                            onTap: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CardWidgets(
                cardTitle: 'Our Mentors',
                icons: SvgPicture.asset('assets/images/mentors_icon.svg'),
                navigations: (context) => ProductCard(),
              ),
              const SizedBox(height: 20.0),
              CardWidgets(
                cardTitle: 'Members ',
                icons: SvgPicture.asset('assets/images/our_team_icon.svg'),
                navigations: (context) => ProductCard(),
              ),
              const SizedBox(height: 20.0),
              CardWidgets(
                cardTitle: ' Our Projects',
                icons: SvgPicture.asset('assets/images/projects_icon.svg'),
                navigations: (context) => ProductCard(),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
