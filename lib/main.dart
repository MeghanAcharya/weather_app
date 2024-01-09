import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherreport/providers/location_provider/location_provider.dart';
import 'package:weatherreport/providers/weather_provider/weather_provider.dart';
import 'package:weatherreport/screens/location/location_selection_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WeatherProvider>(
            create: (_) => WeatherProvider()),
        ChangeNotifierProvider<LocationProvider>(
            create: (_) => LocationProvider()),
      ],
      child: MaterialApp(
        title: 'Weather App',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "OpenSans"),
        home: const LocationSelectionScreen(),
      ),
    );
  }
}
