import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/screens/firt-page.dart';
import 'package:next_one/screens/splashcreen.dart';
import 'package:next_one/widgets/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "roboto",
        primaryColor: Config.colors.primaryColor,
        primarySwatch: Colors.blue,
      ),
      home: SplashWidget(
        child: SplashScreen(),
        nextPage: FirtPage(),
      ),
    );
  }
}
