import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/beranda_screen.dart';
import 'screens/home_screen.dart';
import 'screens/cuaca_screen.dart';
import 'screens/pelaporan_screen.dart';
import 'screens/penanganan_screen.dart';
import 'screens/peringatan_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aisee',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/beranda': (context) => HalBeranda(),
        '/Home': (context) => Beranda(),
        '/Cuaca': (context) => WeatherForecastPage(),
        '/Peringatan': (context) => WarningPage(),
        '/Pelaporan': (context) => ReportPage(),
        '/Penanganan': (context) => ClimateChangePage(),
      },
    );
  }
}
