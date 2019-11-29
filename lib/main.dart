library weather;

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';


part 'screens/city_screen.dart';

part 'screens/location_screen.dart';

part 'screens/loading_screen.dart';

part 'services/location.dart';

part 'services/networking.dart';

part 'services/weather.dart';

part 'utilities/constants.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
