import 'package:bitkim/pages/ekran.dart';
import 'package:flutter/material.dart';
import 'package:bitkim/pages/cklist.dart';
import 'pages/cklist.dart';
class reisim extends StatefulWidget {
  const reisim({Key? key}) : super(key: key);

  @override
  State<reisim> createState() => _reisimState();
}

class _reisimState extends State<reisim> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
    title: Text(cicek),
    ),        body: Container(
    width: screenSize.width,
    height: screenSize.height,
    decoration: BoxDecoration(
    image:  DecorationImage(
    image: AssetImage(resim),
    fit: BoxFit.cover,
    ),
    ),
      child: new GestureDetector(
          onDoubleTap: () { Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => ekran() ));
          }
      ),
    ),
    );
  }
}
