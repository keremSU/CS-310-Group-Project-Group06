import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

import 'screens/welcome_screen.dart';
import 'screens/main_navigation.dart';
import 'screens/add_address_screen.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const WearToWeatherApp(),
    ),
  );
}

class WearToWeatherApp extends StatelessWidget {
  const WearToWeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'WearToWeather',
      theme: ThemeData(
        fontFamily: 'CustomFontFamily',
      ),
      initialRoute: '/',
      routes: {
        '/add-address': (context) => const AddAddressScreen(),
        '/': (context) => const WelcomeScreen(),
        '/home': (context) => const MainNavigation(),
      },
    );
  }
}