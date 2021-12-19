import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/portfolio_screen.dart';
import 'package:team_portfolio/screens/mentors/mentors_detail.dart';
import 'package:team_portfolio/constants/textstyles.dart';

class MentorsPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MentorScreen(),
    );
  }
}

class MentorScreen extends StatefulWidget {
  MentorScreen({Key key}) : super(key: key);

  @override
  _MentorScreenState createState() => _MentorScreenState();
}

class TutList {
  String fio;
  String place;
  String date;
  String img;
  String descr;

  TutList({this.fio, this.place, this.date, this.img, this.descr});
}

class _MentorScreenState extends State<MentorScreen> {
  List<TutList> data = [
    TutList(
        fio: "Azamat Akmatov ",
        place: "Turkey, Istanbul",
        date: "Flutter Developer",
        img: 'assets/images/aza.png',
        descr:
            'About me: Lorem ipsum dolor sit amet,   consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Turat Alybaev",
        place: "Kyrgyzstan, Bishkek",
        date: "Flutter Developer",
        img: 'assets/images/turat.png',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
    TutList(
        fio: "Janybek Jaliev",
        place: "Kyrgyzstan, Bishkek",
        date: "Flutter Developer",
        img: 'assets/images/janibek.png',
        descr:
            'Janibek Jaliev is 22 years old tech person, originally from Alai region of Osh district, Kyrgyzstan. He has a bachelor degree from  English Language Department. and previously, he had experience in tourism field as a tourist guide. It is been 1 year that  he find his passion in IT Field, particularly as a mobile developer with Dart  programming language'),
    TutList(
        fio: "Sadyrbai Zhumadilov ",
        place: "Turkey, Istanbul",
        date: "Flutter Developer",
        img: 'assets/images/sadir.png',
        descr:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cards()),
          ),
        ),
        title: Center(
          child: Text(
            'M E N T O R S',
          ),
        ),
      ),
      body: ListView(
        children: _buildList(),
      ),
    );
  }

  List<Widget> _buildList() {
    return data
        .map((TutList e) => InkWell(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Stack(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Container(
                              color: Colors.white,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 70),
                                      child: Text(
                                        e.fio,
                                        style: ThemeText.ercCard,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 70.0),
                                      child: Text(
                                        e.place,
                                        style: ThemeText.mentorsShrift,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 70.0),
                                      child: Text(
                                        e.date,
                                        style: ThemeText.mentorsShrift,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 1,
                      left: 2,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(e.img),
                        minRadius: 10,
                        maxRadius: 55,
                      ),
                    )
                  ],
                ),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Detail(e.fio, e.place, e.date, e.img, e.descr)));
            }))
        .toList();
  }
}
