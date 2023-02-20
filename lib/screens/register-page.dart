import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/forget-password-page.dart';
import 'package:next_one/screens/home-page.dart';
import 'package:next_one/screens/register-page-name.dart';
import 'package:next_one/widgets/button.dart';
import 'package:next_one/widgets/textField.dart';
import 'package:next_one/widgets/title.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  GlobalKey<FormState> _formKey = GlobalKey();

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
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Ctitle(
                      title: 'Saisissez votre numero de téléphone portable',
                      size: 20,
                    ),
                    SizedBox(
                      height: height(context) * 0.035,
                    ),
                    IntlPhoneField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Numéro de téléphone',
                        hintStyle: TextStyle(
                          color: Config.colors.hintColor,
                          fontSize: 16,
                        ),
                        fillColor: Config.colors.backgroundTextField,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height(context) * 0.025,
                    ),
                    CButton(
                      onPressed: () {
                        route(context, RegisterPageName());
                      },
                      title: 'Continuer',
                    )
                  ],
                ),
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
                height: height(context) * 0.24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Vous avez déja un compte?",
                    style: TextStyle(color: Config.colors.textColor),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Connectez-vous",
                    style: TextStyle(color: Config.colors.hoverColor),
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
