import 'dart:async';
import 'package:flutter/material.dart';
import 'package:halcyon_mobile/views/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 7),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Home(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/globe_outline.png",
              height: 180,
            ),
          ],
        ),
      ),
    );
  }
}
