import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:team_portfolio/pages/dja.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  int _current = 0;
  dynamic _selectedIndex = {};

  CarouselController _carouselController = new CarouselController();

  final List<dynamic> _products = [
    {
      'title': 'Flutter Widgets',
      'nav': MaterialPageRoute(builder: (_) => SMTH()),
      // 'image': Image.asset('assets/images/'),
    },
    {
      'title': 'Chat App',
      // 'image': Image.asset('assets/images/'),
    },
    {
      'title': 'Weather App',
      // 'image': Image.asset('assets/images/'),
    },
    {
      'title': 'Quizz App',
      // 'image': Image.asset('assets/images/'),
    },
    {
      'title': 'BMi Calculate',
      // 'image': Image.asset('assets/images/'),
    },
    {
      'title': 'Dice Game',
      // 'image': Image.asset('assets/images/'),
    },
    {
      'title': 'Xylophone',
      // 'image': Image.asset('assets/images/'),
    },
    {
      'title': 'I am rich!',
      // 'image': Image.asset('assets/images/'),
    },
    {
      'title': 'Counter App',
      // 'image': Image.asset('assets/images/'),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _selectedIndex.length > 0
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.arrow_forward_ios),
            )
          : null,
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
                setState(
                  () {
                    _current = index;
                  },
                );
              },
            ),
            items: _products.map(
              (movie) {
                return Builder(
                  builder: (BuildContext context) {
                    return GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            if (_selectedIndex == movie) {
                              _selectedIndex = {};
                            } else {
                              _selectedIndex = movie;
                            }
                          },
                        );
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: _selectedIndex == movie
                                ? Border.all(
                                    color: Colors.blue.shade500, width: 3)
                                : null,
                            boxShadow: _selectedIndex == movie
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
                                // child: Image.asset(movie['image'],
                                //     fit: BoxFit.cover),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                movie['title'],
                                style: TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ).toList()),
      ),
    );
  }
}
