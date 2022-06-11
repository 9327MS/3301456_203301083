import 'package:bitkim/kompodent/rounded_button.dart';
import 'package:bitkim/kompodent/rounded_input_field.dart';
import 'package:bitkim/kompodent/rounded_password_field.dart';
import 'package:bitkim/kompodent/zatenvar.dart';
import 'package:bitkim/pages/girisekran%C4%B1.dart';
import 'package:bitkim/services/auth.dart';
import 'package:bitkim/services/uyaridiyalog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
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
                  if(user_password.length<=5) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text('Şifreniz en az 6 karakter olmalı')));
                  }
                  else{
                    if(!EmailValidator.validate(user_email)){
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('Lütfen geçerli bir mail adesi giriniz...')));
                    }
                    else{
                    context.read<FlutterFireAuthService>()
                        .createAccount(user_name, user_email, user_password);
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => giris()));
                    cikis("Tebrikler", "Kayıt oldunuz şimdi lütfen giriş yapınız!", context);
                    final collection =
                    FirebaseFirestore.instance.collection('kullanicicicek');
                    await collection.doc(user_email).set({
                      'sehir': "",
                      'bitki': "",
                    });
                    }
                  }
                }
                ),
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