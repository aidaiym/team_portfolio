import 'package:flutter/cupertino.dart';

class TutList {
  final String fio;
  final String place;
  final String date;
  final String img;
  final String descr;

  TutList({
    @required this.fio,
    @required this.place,
    @required this.date,
    @required this.img,
    @required this.descr,
  });
}

class TutListMentors {
  List<TutList> data = [
    TutList(
        fio: "Azamat Akmatov ",
        place: "Turkey, Istanbul",
        date: "Flutter Developer",
        img: 'assets/images/aza.png',
        descr:
            'Azamat Akmatov is a tech enthusiast  based on Turkey. Particularly, he works as a flutter developer in American start- up company. Previously, he worked as professional English teacher for several years and found his passion in being mobile developer with high interest to his job.'),
    TutList(
        fio: "Turat Alybaev",
        place: "Kyrgyzstan, Bishkek",
        date: "Flutter Developer",
        img: 'assets/images/turat.png',
        descr:
            'Turat Alybaev is  web and flutter developer, based on Bishkek,Kyrgyzstan. Even though, he is working in IT field last 2 years, he confirms that he found his passion in IT field. Currently, he coordinates IT projects and shares knowledge /experience on  his YouTube channel for all who wants to join IT field as well.'),
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
      img: 'assets/images/sadyrbai.jpg',
      descr:
          'Sadyrbai Jumabaev is a junior student in Energy Systems Engineering Department at Erciyes University  in Turkiye. Along with several leadership roles in his university\'s extracurricular  works, he always finds time for coding. This year was very productive for Sadyrbai that he did his internship not only at Solid Electron ,but also  Boomerang company as a Junior Flutter developer.',
    ),
  ];
}
