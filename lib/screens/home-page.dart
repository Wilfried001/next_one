import 'dart:math';

import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/auth/login-page.dart';
import 'package:next_one/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Config.colors.textColor, // <-- SEE HERE
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage(Config.asset.orangeMoney),
              ),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage(Config.asset.orangeMoney),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Dindji Severin Wilfried",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Severindindji68@gmail.com",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Méthodes de payement",
                      ),
                      Icon(Icons.attach_money)
                    ],
                  ),
                ),
                Divider(
                  thickness: 10,
                  height: 50,
                  color: Config.colors.backgroundTextField,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Config.colors.backgroundTextField,
                          ),
                          child: Icon(
                            Icons.security,
                            size: 30,
                            color: Config.colors.textColor,
                          ),
                        ),
                        Text(
                          "Sécurité",
                          style: TextStyle(
                              fontSize: 12, color: Config.colors.textColor),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Config.colors.backgroundTextField,
                          ),
                          child: Icon(
                            Icons.headset_mic,
                            size: 30,
                            color: Config.colors.textColor,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            textAlign: TextAlign.center,
                            "Service d’assistance",
                            style: TextStyle(
                                fontSize: 12, color: Config.colors.textColor),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Config.colors.backgroundTextField,
                          ),
                          child: Icon(
                            Icons.settings,
                            size: 30,
                            color: Config.colors.textColor,
                          ),
                        ),
                        Text(
                          "Paramètres",
                          style: TextStyle(
                              fontSize: 12, color: Config.colors.textColor),
                        )
                      ],
                    )
                  ],
                ),
                Divider(
                  thickness: 10,
                  height: 50,
                  color: Config.colors.backgroundTextField,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mes adresses",
                        style: TextStyle(color: Config.colors.textColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Historique des commandes ",
                          style: TextStyle(color: Config.colors.textColor)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Aides et supports",
                          style: TextStyle(color: Config.colors.textColor)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Informations & details",
                          style: TextStyle(color: Config.colors.textColor)),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      route(context, LoginPage());
                    },
                    child: Text(
                      "Deconnexion",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
