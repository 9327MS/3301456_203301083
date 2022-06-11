import 'package:bitkim/kompodent/rounded_button.dart';
import 'package:bitkim/kompodent/rounded_input_field.dart';
import 'package:bitkim/kompodent/rounded_password_field.dart';
import 'package:bitkim/kompodent/zatenvar.dart';
import 'package:bitkim/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
String user_email = "";
class Body extends StatelessWidget {
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
              "Giriş",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            SizedBox(height: 50),
            Icon(
              Icons.spa_outlined,
              size: 250,
              color: Colors.green,
            ),
            SizedBox(height: 10),
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
              text: "Giriş",
              press: () {
                context
                    .read<FlutterFireAuthService>()
                    .logIn(user_email, user_password, context);
              },
            ),
            SizedBox(height: 50),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.popAndPushNamed(context, "Kayıt ol");
              },
            ),
          ],
        ),
      ),
    ),
    );
  }
}