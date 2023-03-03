import 'package:flutter/material.dart';
import 'package:next_one/config/config.dart';
import 'package:next_one/config/functions.dart';
import 'package:next_one/screens/auth/user-info-form.dart';
import 'package:next_one/widgets/button.dart';

class VerifyPhoneOtp extends StatefulWidget {
  const VerifyPhoneOtp({super.key});

  @override
  State<VerifyPhoneOtp> createState() => _VerifyPhoneOtpState();
}

class _VerifyPhoneOtpState extends State<VerifyPhoneOtp> {
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "NEXT",
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: "notable",
                  color: Config.colors.primaryColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "ONE",
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: "notable",
                  color: Config.colors.secondaryColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: width(context) * 0.8,
            child: Text(
              "Veuillez saisir le code envoyé par sms au +225 05 0* ** ** 19",
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: width(context) * 0.8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _textFieldOTP(first: true, last: false),
                _textFieldOTP(first: false, last: false),
                _textFieldOTP(first: false, last: false),
                _textFieldOTP(first: false, last: true),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CButton(
            title: "Suivant",
            onPressed: () {
              route(context, UserInfoForm());
            },
          ),
          SizedBox(
            height: 15,
          ),
          CButton(
              title: "Envoyer un autre code 00:24",
              onPressed: () {},
              color: Config.colors.secondaryColor,
              titleColor: Config.colors.primaryColor),
        ],
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 80,
      width: 60,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 2, color: Config.colors.primaryColor),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
