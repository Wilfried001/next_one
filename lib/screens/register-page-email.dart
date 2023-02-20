import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/register-page-hbd.dart';
import 'package:next_one/widgets/textField.dart';
import 'package:next_one/widgets/title.dart';

class RegisterPageEmail extends StatelessWidget {
  const RegisterPageEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          route(context, RegisterPageHbd());
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
                    title: 'Quelle est votre adresse email?',
                  ),
                  SizedBox(
                    height: height(context) * 0.035,
                  ),
                  CtextField(
                    hint: 'Adresse email',
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
