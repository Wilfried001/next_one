import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/payement-page.dart';
import 'package:next_one/widgets/button.dart';

class ChosePackage extends StatefulWidget {
  const ChosePackage({super.key});

  @override
  State<ChosePackage> createState() => _ChosePackageState();
}

class _ChosePackageState extends State<ChosePackage> {
  @override
  bool _isSelectedPool = false;
  bool _isSelectedPrestige = false;

  void initState() {
    _isSelectedPool = false;
    _isSelectedPrestige = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30.0, right: 20, left: 20, bottom: 20),
          child: SizedBox(
            width: width(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "NEXT",
                      style: TextStyle(
                          fontFamily: "notable",
                          fontSize: 40,
                          color: Config.colors.textColor),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "ONE",
                      style: TextStyle(
                          fontFamily: "notable",
                          fontSize: 40,
                          color: Config.colors.secondaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  " NEXT vous proposent deux types d’abonnement : ABONNEMENT POOL ET ABONNEMENT PRIVILEGE",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Choisissez un forfaire à votre convenance",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Config.colors.primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        width: width(context) * 0.58,
                        height: 360,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'POOL',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "dans cette abonnement nous avons comme avantage :  trois personnes par jour , Confort, Wifi à bord",
                                style: TextStyle(color: Colors.white),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Config.colors.secondaryColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: width(context) * 0.45,
                                        child: Text(
                                          "Trois (3) personnes par véhicule  ",
                                          style:
                                              TextStyle(color: Colors.white70),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Config.colors.secondaryColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: width(context) * 0.35,
                                        child: Text(
                                          "Wifi à bord ",
                                          style:
                                              TextStyle(color: Colors.white70),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Config.colors.secondaryColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: width(context) * 0.35,
                                        child: Text(
                                          "Confort",
                                          style:
                                              TextStyle(color: Colors.white70),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  if (_isSelectedPool != _isSelectedPrestige) {
                                    setState(() {
                                      _isSelectedPool = !_isSelectedPool;
                                      print(_isSelectedPool);
                                    });
                                  } else {
                                    setState(() {
                                      _isSelectedPool = !_isSelectedPrestige;
                                      print(_isSelectedPool);
                                    });
                                  }
                                },
                                child: Icon(
                                  _isSelectedPool
                                      ? Icons.check_box
                                      : Icons.check_box_outline_blank_sharp,
                                  size: 30,
                                  color: Config.colors.secondaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Config.colors.secondaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        width: width(context) * 0.58,
                        height: 360,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'PRESTIGE',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Config.colors.textColor,
                                ),
                              ),
                              Text(
                                "dans ce abonnement nous avons comme avantage : Un personne / véhicule ; Confort ; Wifi à bord",
                                style:
                                    TextStyle(color: Config.colors.textColor),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Config.colors.primaryColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: width(context) * 0.45,
                                        child: Text(
                                          "Une (1) personne par véhicule",
                                          style: TextStyle(
                                              color: Config
                                                  .colors.textColorFiltre),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Config.colors.primaryColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: width(context) * 0.35,
                                        child: Text(
                                          "Wifi à bord",
                                          style: TextStyle(
                                              color: Config
                                                  .colors.textColorFiltre),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Config.colors.primaryColor,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      SizedBox(
                                        width: width(context) * 0.35,
                                        child: Text(
                                          "Confort",
                                          style: TextStyle(
                                              color: Config
                                                  .colors.textColorFiltre),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  if (_isSelectedPrestige != _isSelectedPool) {
                                    setState(() {
                                      _isSelectedPrestige =
                                          !_isSelectedPrestige;
                                      print(_isSelectedPool);
                                    });
                                  } else {
                                    setState(() {
                                      _isSelectedPrestige = !_isSelectedPool;
                                      print(_isSelectedPool);
                                    });
                                  }
                                },
                                child: Icon(
                                  _isSelectedPrestige
                                      ? Icons.check_box
                                      : Icons.check_box_outline_blank_sharp,
                                  size: 30,
                                  color: Config.colors.primaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _isSelectedPrestige || _isSelectedPool
                    ? CButton(
                        title: "Continuer",
                        onPressed: () {
                          route(context, PayementPage());
                        })
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
