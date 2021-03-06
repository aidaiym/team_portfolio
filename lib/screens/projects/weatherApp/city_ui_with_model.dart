import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:team_portfolio/screens/projects/weatherApp/city_screen.dart';
import 'package:team_portfolio/screens/projects/weatherApp/location_provider.dart';
import 'package:team_portfolio/screens/projects/weatherApp/progress_indicator.dart';
import 'package:team_portfolio/screens/projects/weatherApp/utilities/constants.dart';
import 'package:team_portfolio/screens/projects/weatherApp/weather_model.dart';
import 'package:team_portfolio/screens/projects/weatherApp/weather_service.dart';
import 'package:team_portfolio/screens/projects_page.dart';

class MyWeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: CityUIWithModel(),
    );
  }
}

class CityUIWithModel extends StatefulWidget {
  const CityUIWithModel({Key key}) : super(key: key);

  @override
  _CityUIWithModelState createState() => _CityUIWithModelState();
}

class _CityUIWithModelState extends State<CityUIWithModel> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _cityNameController = TextEditingController();
  Position _position;

  bool isLoading = false;
  Map<String, dynamic> _data;
  String weatherIcon;
  String weatherMessage;

  WeatherModel _weatherModel;

  @override
  void initState() {
    super.initState();
    print('initState');
    getLocation();
  }

  getLocation() async {
    print('initState => getLocation()');
    isLoading = true;

    print('setState chakyrylgan jok => isLoading = true');
    final _position = await LocationProvider().getCurrentLocation();
    _data = await weatherService.getWeatherByLocation(_position);

    _weatherModel = WeatherModel.fromJson(_data);

    print('_weatherModel: ${_weatherModel.cityName}');

    setState(() {
      isLoading = false;
    });

    print('setState => isLoading = false');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    print('didChangeDependencies');
  }

  void showSnackbar() {
    scaffoldKey.currentState.showSnackBar(SnackBar(
      content: const Text('snack'),
      duration: const Duration(seconds: 1),
      action: SnackBarAction(
        label: 'ACTION',
        onPressed: () {},
      ),
    ));
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Write your city'),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: TextFormField(
                validator: (String value) {
                  if (value.isEmpty) {
                    return 'Required field';
                  } else {
                    return null;
                  }
                },
                onChanged: (String danniy) {},
                controller: _cityNameController,
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                print(
                    '_cityNameController.text before validate: ${_cityNameController.text}');
                if (_formKey.currentState.validate()) {
                  print(
                      '_cityNameController.text after validate: ${_cityNameController.text}');
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  int _count = 0;
  @override
  Widget build(BuildContext context) {
    _count++;
    log('build chakyryldy $_count and isLoading: $isLoading');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Center(
          child: Text(
            "Weather App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
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
      body: Scaffold(
        key: scaffoldKey,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/location_background.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0.8), BlendMode.dstATop),
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: isLoading
              ? circularProgress()
              : SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlatButton(
                            onPressed: () async {
                              setState(() {
                                isLoading = true;
                              });
                              final Position _pos =
                                  await locationProvider.getCurrentLocation();
                              _data = await weatherService
                                  .getWeatherByLocation(_pos);

                              _weatherModel = WeatherModel.fromJson(_data);

                              setState(() {
                                isLoading = false;
                              });
                            },
                            child: Icon(
                              Icons.near_me,
                              size: 50.0,
                            ),
                          ),
                          FlatButton(
                            onPressed: () async {
                              // _showMyDialog();
                              final _cityNameFromCityPage =
                                  await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CityScreen();
                                  },
                                ),
                              );

                              if (_cityNameFromCityPage != null) {
                                setState(() {
                                  isLoading = true;
                                });
                                _data = await weatherService
                                    .getWeather(_cityNameFromCityPage);

                                _weatherModel = WeatherModel.fromJson(_data);

                                setState(() {
                                  isLoading = false;
                                });
                              }
                            },
                            child: Icon(
                              Icons.location_city,
                              size: 50.0,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              _weatherModel.celcius.toString(),
                              style: kTempTextStyle,
                            ),

                            Text(
                              '${_weatherModel.icon}',
                              style: kConditionTextStyle,
                            ), //Model mn ishtoo
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15.0),
                        child: Text(
                          '${_weatherModel.message}',
                          textAlign: TextAlign.right,
                          style: kMessageTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '${_weatherModel.cityName}',
                          textAlign: TextAlign.right,
                          style: kMessageTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
