import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/auth/register-add-photo-page.dart';
import 'package:next_one/screens/contrat&condiction-page.dart';
import 'package:next_one/widgets/textField.dart';
import 'package:next_one/widgets/title.dart';

class UserInfoForm extends StatelessWidget {
  const UserInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          route(context, CondictionContratConfidentialite());
        },
        backgroundColor: Config.colors.primaryColor,
        child: const Icon(Icons.arrow_right_alt),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Config.colors.textColor, // <-- SEE HERE
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Ctitle(
                title: "Informations Utilisateur",
                size: 28,
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: CtextField(
                        raduis: 10,
                        hint: "Nom",
                      )),
                  SizedBox(width: 5),
                  Expanded(
                    flex: 1,
                    child: CtextField(
                      hint: "Prénoms",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              CtextField(
                raduis: 10,
                hint: "adresse email",
              ),
              SizedBox(
                height: 10,
              ),
              CtextField(
                raduis: 10,
                hint: "Date de naissance",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
