import 'package:bitkim/pages/cklist.dart';
import 'package:bitkim/pages/girisekran%C4%B1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bitkim/pages/kay%C4%B1t.dart';
import '../arkaplanlar/ilkarka.dart';
import 'package:bitkim/kompodent/rounded_button.dart';
import 'package:bitkim/constants.dart';
import 'package:bitkim/pages/ekran.dart';
import 'package:provider/provider.dart';
import 'package:bitkim/menu_notifier.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return cklist();
    }
    final screenSize = MediaQuery
        .of(context)
        .size;
    // This size provide us total height and width of our screen
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
              'BİTKİM UYGULAMASINA HOŞ GELDİNİZ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.meeting_room,
              color: Colors.orangeAccent,
              size: 40,
            ),
            SizedBox(height: 50),
            Icon(
              Icons.grass,
              color: Colors.green,
              size: 150,
            ),
            SizedBox(height: 50),
            RoundedButton(
              text: ('Giriş yap'),
              color: Colors.white,
              textColor: Colors.green,
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
            RoundedButton(
              text: ('Kayıt ol'),
              color: Colors.white,
              textColor: Colors.green,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
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