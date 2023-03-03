import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/reservation-page.dart';
import 'package:next_one/widgets/button.dart';

class CondictionContratConfidentialite extends StatefulWidget {
  const CondictionContratConfidentialite({super.key});

  @override
  State<CondictionContratConfidentialite> createState() =>
      _CondictionContratConfidentialiteState();
}

class _CondictionContratConfidentialiteState
    extends State<CondictionContratConfidentialite> {
  @override
  bool _isSelected = false;
  void initState() {
    _isSelected = false;
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Config.colors.primaryColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Acceptez les condictions générales de NEXT ONE et consulter la déclaration de confidentialité",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: height(context) * 0.42,
                width: width(context),
                child: SvgPicture.asset(
                  Config.asset.undraw_terms,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "En sélectionnant J’accepte ci-dessous, vous vous acceptez",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "les",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Condictions générales",
                            style: TextStyle(
                              fontSize: 12,
                              color: Config.colors.secondaryColor,
                            ),
                          ),
                          Text(
                            "et vous reconnaissez avoir ",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "lu la ",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Déclaration de confidentialité.",
                            style: TextStyle(
                              fontSize: 12,
                              color: Config.colors.secondaryColor,
                            ),
                          ),
                          Text(
                            "J’ai au moins 18 ans",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _isSelected = !_isSelected;
                          });
                        },
                        child: AnimatedContainer(
                          margin: EdgeInsets.all(4),
                          duration: Duration(milliseconds: 500),
                          curve: Curves.fastLinearToSlowEaseIn,
                          decoration: BoxDecoration(
                              color: _isSelected
                                  ? Config.colors.secondaryColor
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(3.0),
                              border: Border.all(
                                color: Config.colors.secondaryColor,
                                width: 1.5,
                              )),
                          width: 20,
                          height: 20,
                          child: _isSelected
                              ? Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14,
                                )
                              : null,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "J'accepte",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  _isSelected
                      ? CButton(
                          title: "Continuer",
                          onPressed: () {
                            route(context, Reservations());
                          },
                        )
                      : SizedBox(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
