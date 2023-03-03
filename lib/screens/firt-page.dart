import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/auth/register-page.dart';
import 'package:next_one/screens/auth/login-page.dart';
import 'package:next_one/widgets/button.dart';

class FirtPage extends StatelessWidget {
  const FirtPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height(context),
            width: width(context),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Config.asset.next_one_car),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: height(context),
            width: width(context),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                stops: [
                  0.1,
                  1,
                ],
                colors: [Color(0xff012d12), Color.fromARGB(223, 26, 150, 59)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        height: width(context) / 6,
                        width: width(context) / 6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Config.asset.logo),
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "NEXT ONE",
                        style: TextStyle(
                            fontFamily: 'miltonia',
                            fontSize: 40,
                            color: Config.colors.secondaryColor),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: width(context) * 0.9,
                        child: Text(
                          "Se déplacer autrement",
                          style: TextStyle(
                              fontSize: 60, color: Config.colors.whithColor),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CButton(
                        title: "Inscription",
                        color: Config.colors.whithColor,
                        titleColor: Config.colors.primaryColor,
                        onPressed: () {
                          route(context, RegisterPage());
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      CButton(
                        title: "Connexion",
                        color: Config.colors.secondaryColor,
                        titleColor: Config.colors.primaryColor,
                        onPressed: () {
                          route(context, LoginPage());
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
// CButton(title: "Connexion", onPressed: () {})
