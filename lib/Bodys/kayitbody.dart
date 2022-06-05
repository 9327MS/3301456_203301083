import 'package:bitkim/kompodent/rounded_button.dart';
import 'package:bitkim/kompodent/rounded_input_field.dart';
import 'package:bitkim/kompodent/rounded_password_field.dart';
import 'package:bitkim/kompodent/zatenvar.dart';
import 'package:bitkim/pages/girisekran%C4%B1.dart';
import 'package:bitkim/arkaplanlar/ilkarka.dart';
import 'package:bitkim/services/auth.dart';
import 'package:bitkim/services/cikisdialog.dart';
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
            SizedBox(height: 30),
            Text(
              "KAYIT OL",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            SizedBox(height: 50),
            Icon(
              Icons.spa_outlined,
              size: 180,
              color: Colors.green,
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
                press: () async{
                  context.read<FlutterFireAuthService>()
                      .createAccount(user_name, user_email, user_password);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => giris()));
                  cikis("Tebrikler", "Kayıt oldunuz şimdi lütfen giriş yapınız!", context);
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
            SizedBox(height: 50),
          ],
        ),
      ),
    ),
    );
  }
}