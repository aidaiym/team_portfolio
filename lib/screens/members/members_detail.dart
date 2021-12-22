import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_portfolio/screens/members/members_page.dart';
import 'package:team_portfolio/widgets/links_widget.dart';
import 'package:team_portfolio/widgets/members_widget.dart';

class MembersDetail extends StatefulWidget {
  final String fio;
  final String place;
  final String date;
  final String img;
  final String aboutme;
  final String education;
  final String skills;
  final String experience;
  final String contacts;
  final String githubLink;
  final String linkedinLink;
  final String instagramLink;

  MembersDetail({
    @required this.fio,
    @required this.place,
    @required this.date,
    @required this.img,
    @required this.aboutme,
    @required this.education,
    @required this.skills,
    @required this.experience,
    @required this.contacts,
    @required this.githubLink,
    @required this.instagramLink,
    @required this.linkedinLink,
  });

  @override
  _MembersDetailState createState() => _MembersDetailState(
        fio: fio,
        place: place,
        date: date,
        img: img,
        aboutme: aboutme,
        education: education,
        skills: skills,
        experience: experience,
        contacts: contacts,
        githubLink: githubLink,
        linkedinLink: linkedinLink,
        instagramLink: instagramLink,
      );
}

class _MembersDetailState extends State<MembersDetail> {
  final double profileHeight = 140;
  final double coverHeight = 100;
  final String fio;
  final String place;
  final String date;
  final String img;
  final String aboutme;
  final String education;
  final String skills;
  final String experience;
  final String contacts;
  final String githubLink;
  final String linkedinLink;
  final String instagramLink;
  _MembersDetailState({
    @required this.fio,
    @required this.place,
    @required this.date,
    @required this.img,
    @required this.aboutme,
    @required this.education,
    @required this.skills,
    @required this.experience,
    @required this.contacts,
    @required this.githubLink,
    @required this.instagramLink,
    @required this.linkedinLink,
  });
  @override
  Widget build(BuildContext context) {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, int index) {
            return Container(
              color: Colors.white,
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon:
                              const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MembersPage(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        color: Colors.black,
                        width: double.infinity,
                        height: coverHeight,
                        margin: EdgeInsets.only(bottom: bottom),
                      ),
                      Positioned(
                        top: top,
                        child: CircleAvatar(
                          radius: profileHeight / 2,
                          backgroundColor: Colors.grey.shade800,
                          backgroundImage: AssetImage(img),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 48.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8.0),
                        Text(
                          fio,
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          date,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),
                        const SizedBox(height: 16.0),
                        const Divider(),
                        MembersResume(
                          title: "About me",
                          resumetext: aboutme,
                        ),
                        const SizedBox(height: 32.0),
                        MembersResume(
                          title: "Education",
                          resumetext: education,
                        ),
                        const SizedBox(height: 32.0),
                        MembersResume(
                          title: "Skills",
                          resumetext: skills,
                        ),
                        const SizedBox(height: 32.0),
                        MembersResume(
                          title: "Experience",
                          resumetext: experience,
                        ),
                        const SizedBox(height: 32.0),
                        MembersResume(
                          title: "Contacts",
                          resumetext: contacts,
                        ),
                        const SizedBox(height: 32.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(width: 12.0),
                            Container(
                              child: Card(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Links(
                                      linkIkon: FontAwesomeIcons.github,
                                      links: githubLink,
                                    ),
                                    Links(
                                      linkIkon: FontAwesomeIcons.linkedin,
                                      links: linkedinLink,
                                    ),
                                    Links(
                                      linkIkon: FontAwesomeIcons.instagram,
                                      links: instagramLink,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
