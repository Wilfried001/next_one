import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Config.colors.blackColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 10,
          ),
          Image.asset(Config.asset.logo),
          Text(
            "deplacez vous en toutes sereinité...",
            style: TextStyle(color: Config.colors.whithColor),
          ),
        ],
      ),
    );
  }
}
