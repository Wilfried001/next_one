import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/register-page-email.dart';
import 'package:next_one/widgets/textField.dart';
import 'package:next_one/widgets/title.dart';

class RegisterPageName extends StatelessWidget {
  const RegisterPageName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          route(context, RegisterPageEmail());
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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Ctitle(
                    title: 'Comment vous appelez-vous',
                  ),
                  SizedBox(
                    height: height(context) * 0.035,
                  ),
                  CtextField(
                    hint: 'Nom',
                  ),
                  SizedBox(
                    height: height(context) * 0.02,
                  ),
                  CtextField(
                    hint: 'Prénoms',
                  ),
                  SizedBox(
                    height: height(context) * 0.015,
                  ),
                ],
              ),
              SizedBox(
                height: height(context) * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
