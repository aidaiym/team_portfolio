import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:team_portfolio/screens/projects/bmicalculatorApp/circular_button.dart';
import 'package:team_portfolio/screens/projects/bmicalculatorApp/constants.dart';
import 'package:team_portfolio/screens/projects/bmicalculatorApp/enums.dart';
import 'package:team_portfolio/screens/projects/bmicalculatorApp/icon_widget.dart';
import 'package:team_portfolio/screens/projects/bmicalculatorApp/result_screen.dart';
import 'package:team_portfolio/screens/projects/bmicalculatorApp/reusable_widget.dart';
import 'package:team_portfolio/screens/projects/bmicalculatorApp/weight_heigth_widget.dart';
import 'package:team_portfolio/screens/projects_page.dart';

class BMIScreen extends StatelessWidget {
  const BMIScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgcolor,
      ),
      home: BMIHomeScreen(),
    );
  }
}

class BMIHomeScreen extends StatefulWidget {
  const BMIHomeScreen({Key key}) : super(key: key);

  @override
  _BMIHomeScreenState createState() => _BMIHomeScreenState();
}

class _BMIHomeScreenState extends State<BMIHomeScreen> {
  Gender gender = Gender.UNKNOWN;
  WeightOrAge weightOrAge;
  double _height;
  int _weigth;
  int _age;

  @override
  void initState() {
    super.initState();

    _height = 100;
    _weigth = 40;
    _age = 16;
  }

  void _decrement(WeightOrAge chosenType) {
    if (chosenType == WeightOrAge.WEIGHT) {
      _weigth--;
    } else {
      _age--;
    }

    setState(() {});
  }

  void _increment(WeightOrAge chosenType) {
    if (chosenType == WeightOrAge.WEIGHT) {
      _weigth++;
    } else {
      _age++;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductCard()),
          ),
        ),
        title: Center(
          child: Text(
            'BMI Calculate',
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 25.0),
                      Expanded(
                        child: Row(
                          children: [
                            ReUsableWidget(
                              onTap: () => chooseGender(Gender.MALE),
                              bgColor: gender == Gender.MALE
                                  ? activeIconColor
                                  : inActiveIconColor,
                              child: IconWidget(
                                icon: FontAwesomeIcons.mars,
                                text: 'MALE',
                                allPaddingSize: 20.0,
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            ReUsableWidget(
                              onTap: () => chooseGender(Gender.FEMALE),
                              bgColor: gender == Gender.FEMALE
                                  ? activeIconColor
                                  : inActiveIconColor,
                              child: IconWidget(
                                icon: FontAwesomeIcons.venus,
                                text: 'FEMALE',
                                allPaddingSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      ReUsableWidget(
                        onTap: null,
                        bgColor: activeIconColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'HEIGHT',
                              style: titleTextStyle,
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  _height.round().toString(),
                                  style: numberTextStyle,
                                ),
                                const SizedBox(width: 5.0),
                                Text(
                                  'cm',
                                  style: TextStyle(fontSize: 15.0),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0),
                            SliderTheme(
                              data: SliderThemeData(
                                trackHeight: 2.0,
                                activeTrackColor: Colors.white,
                                inactiveTrackColor: Colors.grey,
                                thumbColor: Colors.red,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 15.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 25.0),
                                overlayColor: Color(0x29EB1555),
                              ),
                              child: Slider(
                                value: _height,
                                min: 50,
                                max: 230,
                                onChanged: (double ozgorgonSan) {
                                  setState(() {
                                    _height = ozgorgonSan;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Expanded(
                        child: Row(
                          children: [
                            ReUsableWidget(
                              onTap: null,
                              bgColor: activeIconColor,
                              child: WeightHeightWidget(
                                title: 'WEIGHT',
                                weight: _weigth.toString(),
                                increment: () => _increment(WeightOrAge.WEIGHT),
                                decrement: () => _decrement(WeightOrAge.WEIGHT),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            ReUsableWidget(
                              onTap: null,
                              bgColor: activeIconColor,
                              child: WeightHeightWidget(
                                title: 'AGE',
                                age: _age.toString(),
                                increment: () => _increment(WeightOrAge.AGE),
                                decrement: () => _decrement(WeightOrAge.AGE),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30.0),
                    ],
                  ),
                ),
              ),
              CustomButton(
                child: Text(
                  'CALCULATE',
                  style: buttonTextStyle,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultScreen(
                                height: _height,
                                weight: _weigth.toDouble(),
                              )));
                },
                buttonColor: buttonColor,
                constraints: BoxConstraints(
                  minHeight: 90,
                  minWidth: MediaQuery.of(context).size.width,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  chooseGender(Gender chosenGender) {
    setState(() {
      gender = chosenGender;
    });
  }
}
