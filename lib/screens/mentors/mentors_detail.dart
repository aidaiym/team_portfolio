import 'package:flutter/material.dart';
import 'package:team_portfolio/constants/textstyles.dart';

class Detail extends StatefulWidget {
  String fio;
  String place;
  String date;
  String img;
  String descr;

  Detail(this.fio, this.place, this.date, this.img, this.descr);

  @override
  _DetailState createState() => _DetailState(fio, place, date, img, descr);
}

class _DetailState extends State<Detail> {
  String fio;
  String place;
  String date;
  String img;
  String descr;

  _DetailState(this.fio, this.place, this.date, this.img, this.descr);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            expandedHeight: MediaQuery.of(context).size.height / 1.2,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(fio, style: ThemeText.sliverTextHeader),
              centerTitle: true,
              background: Image.asset(img, fit: BoxFit.cover),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.place, color: Colors.white),
                      Text(place, style: ThemeText.sliverText)
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [Text(date, style: ThemeText.sliverText)],
                  ),
                  Divider(),
                  Text(
                    descr,
                    style: ThemeText.sliverText,
                  )
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
