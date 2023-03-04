import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/auth/forget-password-page.dart';
import 'package:next_one/screens/auth/register-page.dart';
import 'package:next_one/screens/home-page.dart';
import 'package:next_one/widgets/button.dart';
import 'package:next_one/widgets/textField.dart';
import 'package:next_one/widgets/title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Config.colors.textColor, // <-- SEE HERE
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ctitle(
                    title: 'Connexion',
                  ),
                  SizedBox(
                    height: height(context) * 0.035,
                  ),
                  CtextField(
                    hint: 'Adresse email',
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  CtextField(
                    hint: 'Mot de passe',
                  ),
                  SizedBox(
                    height: height(context) * 0.015,
                  ),
                  SizedBox(
                    width: width(context),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () {
                            route(context, ForgetPassword());
                          },
                          child: Text(
                            "Mot de passe oubliez?",
                            style: TextStyle(color: Config.colors.textColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height(context) * 0.025,
                  ),
                  CButton(
                    onPressed: () {
                      route(context, HomePage());
                    },
                    title: 'Connexion',
                  )
                ],
              ),
              SizedBox(
                height: height(context) * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: width(context) * 0.4,
                      height: 1.5,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(50, 0, 0, 0),
                      ),
                    ),
                  ),
                  Text(
                    "OR",
                    style: TextStyle(),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: width(context) * 0.4,
                      height: 1.5,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(50, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height(context) * 0.02,
              ),
              Column(
                children: [
                  Container(
                    width: 345,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Config.colors.btnColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Config.asset.google),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Continuer avec Google',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height(context) * 0.01,
                  ),
                  Container(
                    width: 345,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Config.colors.btnColor2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(Config.asset.linkdin),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          'Continuer avec linkedin',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height(context) * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Vous n'avez pas de compte?",
                    style: TextStyle(color: Config.colors.textColor),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  InkWell(
                    onTap: () {
                      route(
                        context,
                        RegisterPage(),
                      );
                    },
                    child: Text(
                      "Inscrivez-vous",
                      style: TextStyle(color: Config.colors.hoverColor),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
