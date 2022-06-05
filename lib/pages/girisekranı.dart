import 'package:bitkim/services/geribildirim.dart';
import 'package:bitkim/pages/ilk.dart';
import 'package:flutter/material.dart';
import 'package:bitkim/Bodys/girisbody.dart';
class giris extends StatefulWidget {
  const giris({Key? key}) : super(key: key);

  @override
  State<giris> createState() => _girisState();
}

class _girisState extends State<giris> {
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
    body: Body()
    );
  }
}
