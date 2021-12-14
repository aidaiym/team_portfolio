import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:team_portfolio/apps/bmicalculatorApp/home_screen.dart';
import 'package:team_portfolio/apps/counterApp/counter.dart';
import 'package:team_portfolio/apps/dicegameApp/dicegame.dart';
import 'package:team_portfolio/apps/flutter_kyrgyz_app/second_page.dart';
import 'package:team_portfolio/apps/i_am_richApp/i_am_rich.dart';
import 'package:team_portfolio/apps/weatherApp/main_page.dart';
import 'package:team_portfolio/apps/xylophone/home_view.dart';

import 'apps/quizzApp/question_page.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int _current = 0;
  dynamic _selectedIndex = {};

  CarouselController _carouselController = new CarouselController();

  List<dynamic> _products = [
    {
      'title': 'Flutter Widgets App',
      'image': 'assets/images/flutter_logo.svg',
      'apps': '/first'
    },
    {
      'title': 'Chat App',
      'image': 'assets/images/chat_app.svg',
      'apps': '/second',
    },
    {
      'title': 'Weather App',
      'image': 'assets/images/wheather_app.svg',
      'apps': '/third'
    },
    {
      'title': 'BMI Calculate',
      'image': 'assets/images/bmi.svg',
      'apps': '/fourth'
    },
    {
      'title': 'Quizz App',
      'image': 'assets/images/quiz_app.svg',
      'apps': '/fifth',
    },
    {
      'title': 'Xylophone App',
      'image': 'assets/images/piano.svg',
      'apps': '/sixth',
    },
    {
      'title': 'Dice Game App',
      'image': 'assets/images/dice_app.svg',
      'apps': '/seventh'
    },
    {
      'title': 'Diamond App',
      'image': 'assets/images/diamond.svg',
      'apps': '/eighth'
    },
    {
      'title': 'Counter App',
      'image': 'assets/images/counter_app.svg',
      'apps': '/ninth'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => MenuPage(),
        '/second': (context) => DiceGame(),
        '/third': (context) => MyWeatherApp(),
        '/fourth': (context) => HomeScreen(),
        '/fifth': (context) => QuestionPage(),
        '/sixth': (context) => XylophoneApp(),
        '/seventh': (context) => DiceGame(),
        '/eighth': (context) => DiamondPage(),
        '/ninth': (context) => CounterScreen(),
      },
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              'Our Projects',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                  height: 450.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  pageSnapping: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: _products.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (_selectedIndex == i) {
                            _selectedIndex = {};
                          } else {
                            _selectedIndex = i;
                          }
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: _selectedIndex == i
                                ? Border.all(
                                    color: Colors.blue.shade500, width: 3)
                                : null,
                            boxShadow: _selectedIndex == i
                                ? [
                                    BoxShadow(
                                        color: Colors.blue.shade100,
                                        blurRadius: 30,
                                        offset: Offset(0, 10))
                                  ]
                                : [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 20,
                                        offset: Offset(0, 5))
                                  ]),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, i['apps']);
                          },
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: EdgeInsets.only(top: 10),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(40.0),
                                    child: SvgPicture.asset(
                                      i['image'],
                                      width: double.infinity,
                                      height: double.infinity,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  i['title'],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              }).toList()),
        ),
      ),
    );
  }
}
