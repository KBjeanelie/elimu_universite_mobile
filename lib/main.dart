import 'package:elimu_universite_mobile/screens/login.dart';
import 'package:elimu_universite_mobile/screens/splash_screen.dart';
import 'package:elimu_universite_mobile/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io' show Platform;
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: const Color.fromRGBO(25, 40, 62, 0),
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness:
            Platform.isIOS ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: const Color.fromRGBO(25, 40, 62, 0),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: false,
      ),
      home: const SplashScreen(),
    );
  }
}
