import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bitkim/giris.dart';
import 'package:bitkim/pages/girisekranı.dart';
import 'package:bitkim/arkaplanlar/ilkarka.dart';
import 'package:bitkim/Bodys/ilkbody.dart';
import 'package:provider/provider.dart';
import 'package:bitkim/pages/ekran.dart';


class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        title: Text('Bitkim'),
      ),
      body: Body()
    );
  }
}