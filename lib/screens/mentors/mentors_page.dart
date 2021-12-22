import 'package:flutter/material.dart';
import 'package:team_portfolio/models/tut_list_mentors.dart';
import 'package:team_portfolio/screens/portfolio_screen.dart';
import 'package:team_portfolio/screens/mentors/mentors_detail.dart';
import 'package:team_portfolio/constants/textstyles.dart';

TutListMentors tutListMentors = TutListMentors();

class MentorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MentorScreen(),
    );
  }
}

class MentorScreen extends StatefulWidget {
  @override
  _MentorScreenState createState() => _MentorScreenState();
}

class _MentorScreenState extends State<MentorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Cards()),
          ),
        ),
        title: const Center(
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
    return tutListMentors.data
        .map(
          (TutList e) => InkWell(
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
                            borderRadius: const BorderRadius.only(
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
                  builder: (context) => Detail(
                      fio: e.fio,
                      place: e.place,
                      date: e.date,
                      img: e.img,
                      descr: e.descr),
                ),
              );
            },
          ),
        )
        .toList();
  }
}
