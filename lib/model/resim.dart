import 'package:bitkim/pages/ekran.dart';
import 'package:bitkim/pages/arakaynak.dart';
import 'package:flutter/material.dart';

class reisim extends StatefulWidget {
  const reisim({Key? key}) : super(key: key);

  @override
  State<reisim> createState() => _reisimState();
}
List<String>
ckism = ['Ametist','Papatya','Gül','Zambak','Lale','Nergis','Orkide','Barış'],
ckresim =['assets/images/amtes.jpg','assets/images/papatya.png','assets/images/gul.jpg','assets/images/zambak.jpg','assets/images/lale.jpg','assets/images/nergis.jpg','assets/images/orkide.jpg','assets/images/baris.jpg'];
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
    title: Text(ckism[int.parse(ckin)]),
    ),        body: Container(
    width: screenSize.width,
    height: screenSize.height,
    decoration: BoxDecoration(
    image:  DecorationImage(
    image: AssetImage(ckresim[int.parse(ckin)]),
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
