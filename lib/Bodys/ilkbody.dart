import 'package:bitkim/pages/girisekran%C4%B1.dart';
import 'package:flutter/material.dart';
import 'package:bitkim/pages/kay%C4%B1t.dart';
import 'package:bitkim/kompodent/rounded_button.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
            Text(//ckin,
              'BİTKİM UYGULAMASINA HOŞ GELDİNİZ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.meeting_room_outlined,
              color: Colors.black,
              size: 60,
            ),
            SizedBox(height: 30),
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
                Navigator.pushReplacement(
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
                Navigator.pushReplacement(
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