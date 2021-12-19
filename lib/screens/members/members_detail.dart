import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_portfolio/screens/members/members_page.dart';
import 'package:team_portfolio/widgets/links_widget.dart';
import 'package:team_portfolio/widgets/members_widget.dart';

class MembersDetail extends StatefulWidget {
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

  MembersDetail(
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
  );

  @override
  _MembersDetailState createState() => _MembersDetailState(
        fio,
        place,
        date,
        img,
        aboutme,
        education,
        skills,
        experience,
        contacts,
        githubLink,
        linkedinLink,
        instagramLink,
      );
}

class _MembersDetailState extends State<MembersDetail> {
  final double profileHeight = 140;
  final double coverHeight = 100;
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
  _MembersDetailState(
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
  );
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
                          icon: Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MembersPage()),
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
                    padding: EdgeInsets.symmetric(horizontal: 48.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8.0),
                        Text(
                          fio,
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          date,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        const SizedBox(height: 16.0),
                        Divider(),
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
