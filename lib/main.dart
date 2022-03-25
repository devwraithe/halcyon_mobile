import 'package:flutter/material.dart';
import 'package:halcyon_mobile/utilities/routes.dart';
import 'package:halcyon_mobile/views/home.dart';
import 'package:halcyon_mobile/views/splash.dart';

void main() {
  runApp(const HalcyonNews());
}

class HalcyonNews extends StatelessWidget {
  const HalcyonNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halcyon News',
      initialRoute: '/',
      routes: {
        HalcyonRoutes.home: (context) => const Home(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        fontFamily: 'GTWalsheimPro',
        // textTheme: TextTheme()
      ),
      home: const Splash(),
    );
  }
}
