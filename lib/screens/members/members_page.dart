import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/portfolio_screen.dart';
import 'package:team_portfolio/screens/members/members_detail.dart';
import 'package:team_portfolio/constants/textstyles.dart';

class MembersPage extends StatelessWidget {
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
  String aboutme;
  String education;
  String skills;
  String experience;
  String contacts;
  String githubLink;
  String linkedinLink;
  String instagramLink;
  TutList({
    this.fio,
    this.place,
    this.date,
    this.img,
    this.aboutme,
    this.education,
    this.skills,
    this.experience,
    this.contacts,
    this.githubLink,
    this.instagramLink,
    this.linkedinLink,
  });
}

class _MentorScreenState extends State<MentorScreen> {
  List<TutList> data = [
    TutList(
      fio: "Daniyar Akparov",
      place: "Kyrgyzstan, Bishkek",
      date: "Flutter Developer",
      img: 'assets/images/daniyar.jpg',
      education:
          'Jalal-Abad State University at “ Engineering Programming” department 2000-2005 \n 2.Kyrgyz Flutter, Flutter developer, Bishkek,Kyrgyzstan. 01.10.21-30.01.22',
      aboutme:
          'Currently , I work as a HR manager with a major in programming.  I am experienced in  1C and Python languages and work as a flutter developer as well. If you need any help or have questions about my skills and education  , feel free to reach out. I will show your problem result as soon as possible. ',
      experience:
          '“Ant Yapi” construction company 2019-current Flutter Kyrgyz App, Flutter framework tutorial app in Kyrgyz language.',
      skills:
          'Communication, HRM knowledge, HR strategy and managing team work and Programming languages 1C, Python and Dart,Mathematical aptitude.',
      contacts:
          'My contact gmail: daniyarkorp@gmail.com \nMy phone number:+79194116610 ',
      githubLink: ' https://github.com/daniyarkorp',
      linkedinLink: 'https://www.linkedin.com/in/daniar-akparov-aa7993228/',
      instagramLink: 'https://www.instagram.com/dakparov/',
    ),
    TutList(
      fio: "Adilet Djumaev",
      place: "Kyrgyzstan, Bishkek",
      date: "Flutter Developer",
      education:
          '1.Jyldyz academy, Kelechek project,  Bishkek,Kyrgyzstan. \n 2.Kyrgyz Flutter, Flutter developer, Bishkek,Kyrgyzstan. 01.10.21-30.01.22',
      img: 'assets/images/adil.jpg',
      aboutme:
          'I am a UX/UI designer for web-site, android and ios devices with the help of Figma and  CorelDraw. At the same time,I work as a  frontend and flutter  developer  with programming languages: CSS, HTML,Dart. If you need any help from me, feel free to reach out to me. I would love to bring my enthusiasm to your team',
      experience:
          '1.Jyldyz academy :Frontend developer, ,UX/UI   design, Bishkek, Kyrgyzstan. 07.07.21-15.11.21 \n 2.Webilim academy: UX/UI design, Bishkek, Kyrgyzstan. 01.08.21-01.10.21 \n 3. The academy of creative professions : UX/UI design,Bishkek, Kyrgyzstan 01.11.21-ongoing \n 4.Flutter Kyrgyz App, Flutter framework tutorial app in Kyrgyz.',
      skills:
          'User interface design Responsive web designer User research and Strategy ,Team management , Empathy and flexibility.',
      contacts:
          'My contact: blackdillingerhugo@gmail.com \n My phone number:  +79659955547, or +996706010102',
      githubLink: 'https://github.com/webdeveloperkg',
      linkedinLink: 'https://www.linkedin.com/in/adilet-dzhumaev-a78204229/',
      instagramLink: 'https://www.instagram.com/webdeveloper.kg/',
    ),
    TutList(
      fio: "Nurjamal Yrys",
      place: "Kyrgyzstan, Bishkek",
      education:
          'American University of Central Asia, ICP Department 2015-2019 \n 2.Flutter Kyrgyz, flutter developer, Bishkek, Kyrgyzstan , Oct 2021-January 2021',
      date: "Flutter Developer",
      img: 'assets/images/nurjamal.jpg',
      aboutme:
          'I am a flutter developer with project management experiences for 2 years. Aiming product and customer first, I am ready for the extra mile to make sure you are getting a better product. Reach out to me if you need any help from me or check out my GitHub about my candidacy. ',
      experience: 'Educational Flutter Mobile App.',
      skills:
          'Strong communication, Team management and strong organizational skills with  Leadership as well as Client oriented.',
      contacts:
          'My Email: nurzhamalyrysbekova@gmail.com \n Phone number:(+996) 708 00 64 98',
      githubLink: 'https://github.com/Nurzhamalyrys',
      linkedinLink: 'https://www.linkedin.com/in/nurzhamalyrysbekova123/ ',
      instagramLink: 'https://www.instagram.com/nurzhamal_yrys/',
    ),
    TutList(
      fio: "Suiunbek Karimov",
      place: "Kyrgyzstan, Bishkek",
      education:
          'Kyrgyz-Turkish Manas University,”Business Administration” department, 2007-2012, \n 2.Bishkek, Kyrgyzstan Jyldyz Academy, Front-end Developer, 2021',
      date: "Flutter Developer",
      img: 'assets/images/suiunbek.jpg',
      aboutme:
          'I am a front-end developer with a Business Administration backgroud.  I know programming languages HTML, CSS and Dart and am eager to solve complex challenges. If you need any help from me, let me know about it and I will try my best to solve it. ',
      experience: 'Educational Flutter Mobile App.',
      skills:
          'Strong communication, Team and Time Management, Leadership and Problem-solving ',
      contacts:
          'My Contact : suiunbek.karimov@gmail.com \n   Contact number: 0702202020    ',
      githubLink: 'https://github.com/SuiunbekKarimov',
      linkedinLink: ' https://www.linkedin.com/in/суйунбек-каримов-593131213',
      instagramLink:
          'https://instagram.com/suiunbek.karimov?utm_medium=copy_link',
    ),
    TutList(
      fio: "Aidaiym Tursunalieva",
      place: "Kyrgyzstan, Bishkek",
      date: "Flutter Developer",
      img: 'assets/images/mus.jpg',
      aboutme:
          ' I am a sophomore student at International University of Central Asia with a major “Computer Science.  Currently , I know Java, Python, Django, Dart, Flutter programming languages and I  am passionate to discover new opportunities in programming. Please, feel free to reach out if you have any queries about my candidacy. ',
      education:
          '1.The International University of Central Asia (IUCA)   2020-2024 \n 2.Kyrgyz Flutter, Flutter developer, Bishkek,Kyrgyzstan. 01.10.21-30.01.22',
      skills:
          'Programming languages: Java,  Flutter. Strong organizational skills and quick learner with team management skills ',
      experience:
          '1. MBP company(Kyrgyzstan, Bishkek)  - - Front-End Developer Intern  05.2021- 07.2021. \n 2. Educational Flutter Mobile App.',
      contacts:
          'My contact: omurbekovnaaidaiym@gmail.com \n My phone number:+996550770128 ',
      githubLink: 'https://github.com/aidaiym',
      linkedinLink: 'https://www.linkedin.com/in/aidaiym',
      instagramLink: 'https://www.instagram.com/aidaiym.m/',
    ),
    TutList(
      fio: "Azamat Asanbekovich",
      place: "Kyrgyzstan, Bishkek",
      education:
          'Kyrgyz-Turkish Manas University,”Communication:TV and Radio”  department, 2015-2020, Bishkek  \n 2. Kyrgyzstan Kyrgyz Flutter, Flutter developer',
      date: "Flutter Developer",
      img: 'assets/images/azamatf.jpg',
      aboutme:
          'I am a flutter developer with a great interest in mobile apps. My interest started in programming from my university years and I love challenging myself to learn and solve complicated problems.in programming. My programming style is  creative, effective, and team-spirited.',
      experience: 'Educational Flutter Mobile App.',
      skills:
          'Leadership, Strong Communication, Team Prayer, Accuracy and attention to detail ',
      contacts:
          'My email address: amirhakas934@gmail.com  \n My Contact Number:  +996559020525',
      githubLink:
          'https://github.com/AsanbekovAzamatAsanbekoglu/AsanbekovAzamatAsanbekoglu',
      linkedinLink:
          'https://www.linkedin.com/in/%D0%B0%D0%B7%D0%B0%D0%BC%D0%B0%D1%82-%D0%B0%D1%81%D0%B0%D0%BD%D0%B1%D0%B5%D0%BA%D0%BE%D0%B2-050755203',
      instagramLink: 'https://www.instagram.com/azamatasanbekovisch/',
    ),
    TutList(
      fio: "Kylychbek Zholdubaev",
      place: "Kyrgyzstan, Bishkek",
      education: 'Makers Bootcamp , Bishkek ,Kyrgyzstan, May 2021-Sep 2021.',
      date: "Flutter Developer",
      img: 'assets/images/kylych.jpg',
      aboutme:
          'I am a developer with programming languages  JavaScript(basic), Python(medium), Django, Dart(basic), HTML, CSS. I love to learn about new technologies, different systems, and explore various parts of the business.Please, check my Github if you have any queries for collaboration',
      experience: 'Educational Flutter Mobile App.',
      skills:
          'High-quality deliveries and strong communication with programming languages: JavaScript(basic), Python(medium), Django, Dart(basic), HTML, CSS.',
      contacts:
          'My email address: kylychbekjoldubaev@gmail.com  \n My Contact Number:  0703182859',
      githubLink: 'https://github.com/Joldubaev/KyrgystanBlog',
      linkedinLink: 'https://www.facebook.com/kylychbek.joldubaev.90',
      instagramLink: 'https://www.facebook.com/kylychbek.joldubaev.90',
    ),
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
            'Members of our team',
          ),
        ),
      ),
      body: ListView(
        children: _buildListM(),
      ),
    );
  }

  List<Widget> _buildListM() {
    return data
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
                  builder: (context) => MembersDetail(
                    e.fio,
                    e.place,
                    e.date,
                    e.img,
                    e.aboutme,
                    e.education,
                    e.skills,
                    e.experience,
                    e.contacts,
                    e.githubLink,
                    e.linkedinLink,
                    e.instagramLink,
                  ),
                ),
              );
            },
          ),
        )
        .toList();
  }
}
