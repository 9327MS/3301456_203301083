import 'package:bitkim/pages/arakaynak.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class animasyon extends StatefulWidget {
  const animasyon({Key? key}) : super(key: key);

  @override
  State<animasyon> createState() => _animasyonState();
}

class _animasyonState extends State<animasyon> {
  @override
  void initState(){
    super.initState();

    Future.delayed(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ekrandeneme() )));
  }
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
        title: Text('BİTKİM')),
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          width: screenSize.width,
          child: RiveAnimation.asset('assets/new_file2.riv',fit: BoxFit.fill,),
        ),
      ),
    );
  }
}
