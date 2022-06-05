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
        centerTitle: true,
        titleTextStyle: TextStyle(
        fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
    title: Text('BİTKİM'),
    ),
    body: Body()
    );
  }
}
