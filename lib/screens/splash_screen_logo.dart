import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:lottie/lottie.dart';
import 'package:quran_surr/globals.dart';
import 'package:quran_surr/screens/constants/extension.dart';
import 'package:quran_surr/screens/home_screen.dart';
import 'package:quran_surr/screens/splash_screen.dart';

class SplashLogo extends StatefulWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  State<SplashLogo> createState() => _SplashLogoState();
}

class _SplashLogoState extends State<SplashLogo> {
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 3000),
        () => Get.to(() => HomeScreen(),
            transition: Transition.downToUp,
            duration: const Duration(seconds: 2)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [primary, gray])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(children: [
            // Lottie.asset("assets/lotties/Logo_Task.json",
            //     width: 300, height: 300, fit: BoxFit.cover),
            // TweenImageWidget(

            //   ImagesEntry(3, 7, "assets/images/logo4vm-v2.jfif"),
            //   durationMilliseconds: 5000,
            // ),
            Lottie.asset(
              'assets/lotties/logos.json',
              width: 120.0.wp,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'Doa Doa & Alquran Apps',
                  style: TextStyle(fontSize: 25.0.sp, color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),

            SpinKitPulse(
              color: Colors.white,
              size: 100,
            ),

            // Opacity(opacity: 0.3, child: Text('Loading Application Data..'))
          ]),
        ],
      ),
    ));
  }
}

// colors: [Color(0xFFFF800B), Color(0xFFCE1010)]


