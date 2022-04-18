import 'dart:async';

import 'package:africell_app/util/colors.dart';
import 'package:africell_app/util/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors().PrimaryColor,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 250.0),
            child: Image.asset(
              ConstatAssets().logo_white,
              width: 250,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Center(
              child: CircularProgressIndicator(
                backgroundColor: ConstantColors().PrimaryColor,
                color: ConstantColors().WhiteColor,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
