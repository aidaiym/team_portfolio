import 'package:flutter/material.dart';
import 'package:team_portfolio/screens/projects/quizzApp/expanded_text_button.dart';
import 'package:team_portfolio/screens/projects/quizzApp/questions_brain.dart';
import 'package:team_portfolio/screens/projects_page.dart';

class QuizzApp extends StatelessWidget {
  const QuizzApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff212121),
      ),
      home: QuestionPage(),
    );
  }
}

class QuestionPage extends StatefulWidget {
  const QuestionPage({Key key}) : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<Widget> icons = <Widget>[];

  int count = 0;

  String questionText = 'No Questions';

  Icon correctIcon = Icon(
    Icons.check,
    color: Colors.green,
    size: 32.0,
  );
  Icon inCorrectIcon = Icon(
    Icons.close,
    color: Colors.red,
    size: 32.0,
  );

  @override
  void initState() {
    super.initState();
    print('initState========');
    questionText = QuestionsBrain().getQuestion();
  }

  void userAnswered(bool userAnswer) {
    bool _realAnswer = questionsBrain.getRealAnswer();

    if (userAnswer == _realAnswer) {
      icons.add(correctIcon);
    } else {
      icons.add(inCorrectIcon);
    }

    questionsBrain.getNext();
    questionText = questionsBrain.getQuestion();

    print('questionText at UI: $questionText');

    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build======== $count');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Center(
          child: Text(
            "Quizz App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductCard()),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 18.0,
          left: 18.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(
                  questionText,
                  style: TextStyle(
                    fontSize: 32.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            questionText == 'Аягына чыкты!'
                ? ExpandedTextButton(
                    buttonText: 'Кайрадан башта!',
                    buttonBgColor: Color(0xff4CAF51),
                    onPressed: () {
                      setState(() {
                        icons = <Widget>[];
                        questionText = questionsBrain.reset();
                      });
                    },
                  )
                : ExpandedTextButton(
                    buttonBgColor: Color(0xff4CAF51),
                    buttonText: 'Туура',
                    onPressed: () {
                      userAnswered(true);
                    },
                  ),
            questionText == 'Аягына чыкты!'
                ? SizedBox()
                : ExpandedTextButton(
                    buttonBgColor: Color(0xffF54336),
                    buttonText: 'Туура эмес',
                    onPressed: () => userAnswered(false),
                    //Ustunku  userAnswered(true) degendin kiska jolu
                  ),
            SizedBox(height: 60.0),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 58.0, right: 18.0, left: 18.0),
        child: Row(
          children: icons,
        ),
      ),
    );
  }

  Expanded _buildExpandedButton({Color buttonBgColor, String buttonText}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              buttonBgColor,
            ),
          ),
        ),
      ),
    );
  }
}
