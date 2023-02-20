import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/widgets/textField.dart';
import 'package:next_one/widgets/title.dart';

class RegisterPageAddPhoto extends StatelessWidget {
  const RegisterPageAddPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          route(context, RegisterPageAddPhoto());
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
            children: [
              Ctitle(
                title: 'Ajouter une photo',
              ),
              SizedBox(
                height: height(context) * 0.05,
              ),
              InkWell(
                onTap: () {
                  print("object");
                },
                child: SizedBox(
                  width: width(context),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Config.colors.textColor,
                            width: 5,
                          ),
                        ),
                        child: Icon(
                          Icons.photo_camera_outlined,
                          size: 60,
                          color: Config.colors.textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
