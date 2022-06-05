import 'package:bitkim/kompodent/rounded_button.dart';
import 'package:bitkim/kompodent/rounded_input_field.dart';
import 'package:bitkim/kompodent/rounded_password_field.dart';
import 'package:bitkim/kompodent/zatenvar.dart';
import 'package:bitkim/pages/girisekran%C4%B1.dart';
import 'package:bitkim/arkaplanlar/ilkarka.dart';
import 'package:bitkim/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  String user_name = "";
  String user_email = "";
  String user_password = "";

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage(
        'assets/giris.jpg'
    ),
    fit: BoxFit.fill,
    ),
    shape: BoxShape.rectangle,
    ),
    alignment: Alignment.center,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "KAYIT OL",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            Image.asset(
              "assets/images/ciceklogo.png",
              height: 50,
            ),
            RoundedInputField(
              hintText: "Adınız",
              onChanged: (value) {
                user_name = value;
              },
            ),
            RoundedInputField(
              hintText: "Mail adresiniz",
              onChanged: (value) {
                user_email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                user_password = value;
              },
            ),
            RoundedButton(
                text: "KAYIT OL",
                press: () {
                  context
                      .read<FlutterFireAuthService>()
                      .createAccount(user_name, user_email, user_password);
                }),
            SizedBox(height: 50),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return giris();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    ),
    );
  }
}