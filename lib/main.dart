import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_surr/screens/splash_screen.dart';
import 'package:get/get.dart';
import 'package:quran_surr/screens/splash_screen_logo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return GetMaterialApp(
      title: 'Al-quran',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashLogo(),
    );
  }
}
