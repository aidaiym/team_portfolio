import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:team_portfolio/apps/weatherApp/city_ui_with_model.dart';

import 'package:team_portfolio/apps/weatherApp/weather_service.dart';

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
