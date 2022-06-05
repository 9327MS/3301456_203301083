import 'package:bitkim/pages/ilk.dart';
import 'package:flutter/material.dart';
import 'package:bitkim/Bodys/kayitbody.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 130,
        leading: ElevatedButton.icon(
            onPressed: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => WelcomeScreen())),
            icon: const Icon(Icons.home_filled),
            label: const Text('Ana Sayfa'),
            style: ElevatedButton.styleFrom(
                elevation: 0, primary: Colors.transparent, shadowColor: Colors.white)
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        title: Text('Bitkim'),
      ),
      body: Body(),
    );
  }
}