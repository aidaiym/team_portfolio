import 'package:flutter/material.dart';
import 'package:team_portfolio/apps/flutter_kyrgyz_app/detail.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class WidgetListClass {
  String appbarCenterText;
  String bodyText;
  WidgetListClass({this.appbarCenterText, this.bodyText});
}

class _MenuPageState extends State<MenuPage> {
  List<WidgetListClass> data = [
    WidgetListClass(
      appbarCenterText: 'AppBar',
      bodyText:
          'AppBar class - Материалдык дизайн виджети. AppBar тиркеменин эң жогорку компоненти болуп саналат. Бул виджет көбүнчө Scaffold классынын ичинде жайгашкан. Ошондой эле, AppBar беш бөлүктөн турат: leading, title, ToolBar (actions), flexiableSpace, bottom.',
    ),
    WidgetListClass(
      appbarCenterText: 'Center',
      bodyText:
          'Center - өзүнүн ичинде жайгашкан компонентерди борборлоштуруучу виджет.  Center виджеттин негизги төрт компоненти бар: widthFactor, heightFactor, child жана alignment.',
    ),
    WidgetListClass(
      appbarCenterText: 'Column',
      bodyText:
          'Column - children ди вертикалдуу массивде көрсөткөн виджет. Columnдун параметрлери: key:виджеттин ачкычы. mainAxisAlignment: вертикалдуу тегиздейт. mainAxisSize: Негизги огу боюнча виджет ээлеген мейкиндикти орнотот. crossAxisAlignment: Горизонталдуу тегиздейт.textDirection: горизонталдуу жайгаштырылган элементтердин тартибин аныктайт. verticalDirection: Columnдун ичинде жайгашкан элементтердин вертикалдуу тартибин аныктайт. textBaseline: элементтерди тегиздөө үчүн базалык сызыкты орнотот. children:  Columnдун ичинде жайгашкан(вложенный) элементтердин жыйындысы',
    ),
    WidgetListClass(
      appbarCenterText: 'Container',
      bodyText:
          'Container- өзүнүн ичине кандайдыр бир компонентти камтуу үчүн колдонулуучу виджет.  Бул виджетке padding, margin, alignment  касиеттер  колдонулат.',
    ),
    WidgetListClass(
      appbarCenterText: 'Expanded',
      bodyText:
          'Expanded Widgetин колдонуу менен, өзүбүз каалагандай виджетти түзө алабыз. Бул өзүбүз жасаган виджетке **function** дагы кошууга толук мүмкүнчүлүк бар.Row жана Column виджеттеринин ичине тизилген нерселерди бирдей размерде тизүү үчүн Expanded виджети колдонулат. Expanded дин ичинде болсо flex деген өзгөчөлүгү менен алардын размерин да өзгөртө алабыз, flex’тин эң чоң размери 10 болуп эсептелет, жана flexтин демейки параметри 1 болуп эсептелет. flex 1 берүүнүн кажети жок, анткени ал демейки катары 1 де турат.',
    ),
    WidgetListClass(
      appbarCenterText: 'MaterialApp',
      bodyText:
          'Материалдык дизайнды колдонгон колдонмо. Материалдык дизайн колдонмолору үчүн көбүнчө талап кылынган бир катар виджеттерди камтыган ыңгайлуу виджет. Ал AnimatedTheme жана GridPaper сыяктуу материалдык-дизайнга спецификалык функцияларды кошуу менен WidgetsApp ка негизделет. MaterialApp төмөнкү тартипте маршруттарды издөө үчүн жогорку деңгээлдеги Навигаторду конфигурациялайт: / маршруту үчүн, эгерде нөл эмес болсо, үй мүлкү колдонулат. Болбосо, каттамдар таблицасы колдонулат, эгерде анда маршрутка жазуусу бар болсо. Болбосо, эгерде берилген болсо, onGenerateRoute чакырылат. Ал үй жана маршруттар тарабынан иштетилбеген бардык жарактуу маршрут үчүн нөл эмес маанини кайтарышы керек. Акыр-аягы, эгерде баары аткарылбаса, UnknownRoute деп аталат. Эгерде Навигатор түзүлсө, анда бул опциялардын жок дегенде бири / маршрутун иштетиши керек, анткени ал ишке киргизүүдө жараксыз initialRoute көрсөтүлгөндө колдонулат (мисалы, Android де аны ишке киргизген башка колдонмо тарабынан; карагыла: dart:ui.PlatformDispatcher .defaultRouteName).',
    ),
    WidgetListClass(
      appbarCenterText: 'Padding',
      bodyText:
          'Padding виджети childrenге боштук берүүгө мүмкүндүк берет.  Paddingти орноткондон кийин дайыма рadding параметри колдонулат. Padding параметрин сүрөттөө үчүн EdgeInsets  классы колдонулат. Ал өз ичине EdgeInsets.all(), EdgeInsets.only(), EdgeInsets.symmetric конструктарларын камтыйт. ',
    ),
    WidgetListClass(
      appbarCenterText: 'Row',
      bodyText:
          'Row өз ичинде children алат жана аны горизонталдуу массивде көрсөткөн виджет.',
    ),
    WidgetListClass(
      appbarCenterText: 'Scaffold',
      bodyText:
          'Негизги материалдык дизайн визуалдык жайгашуу түзүмүн ишке ашырат. Бул класс тартмаларды жана төмөнкү барактарды көрсөтүү үчүн APIлерди камсыз кылат. Туруктуу төмөнкү баракты көрсөтүү үчүн, Scaffold.of аркылуу учурдагы BuildContext үчүн ScaffoldState алыңыз жана ScaffoldState.showBottomSheet функциясын колдонуңуз.',
    ),
    WidgetListClass(
      appbarCenterText: 'Text',
      bodyText:
          'Text виджети бир стилдеги текст саптарын көрсөтөт. Текст бир нече сапта,  же макеттин чектөөлөрүнө жараша баары бир гана сапта көрсөтүлүшү мүмкүн. Стиль аргументи милдеттүү эмес. Эгерде Textке Style берилбесе, анда текст DefaultTextStyle стилин колдонот. ',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff20232A),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Flutter",
          style: TextStyle(
            color: Colors.black,
            fontSize: 35.0,
          ),
        )),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu, color: Colors.black, // add custom icons also
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 26.0,
                ),
              )),
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: _buildList(),
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Container(
                    child: Text(
                      'F',
                      style: TextStyle(
                        color: Color(0xffE4DCD9).withOpacity(0.1),
                        fontSize: 90,
                        fontFamily: 'neon',
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildList() {
    return data
        .map(
          (WidgetListClass e) => InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffF5F5FA),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3), //color of shadow
                      spreadRadius: 5, //spread radius
                      blurRadius: 7, // blur radius
                      offset: Offset(2, 3),
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Image.asset(
                    'assets/images/logo_flutter.jpg',
                    width: 20,
                    height: 20,
                  ),
                  title: Text(
                    e.appbarCenterText,
                    style: TextStyle(fontSize: 20, fontFamily: "Montserrat"),
                  ),
                  trailing: Wrap(
                    spacing: 12, // space between two icons
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        size: 30,
                      ), // icon-1
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        size: 40,
                      ), // icon-2
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Detail(e.appbarCenterText, e.bodyText),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        )
        .toList();
  }
}
