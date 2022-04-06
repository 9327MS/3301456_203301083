import 'package:flutter/material.dart';

class bildirim extends StatefulWidget {
  const bildirim({Key? key}) : super(key: key);

  @override
  State<bildirim> createState() => _bildirimState();
}

class _bildirimState extends State<bildirim> {
  bool Switchd = false;
  var bildirimdurumu = 'Bildirimler kapalı';

  void toggleSwitch(bool value) {
    if (Switchd == false) {
      setState(() {
        Switchd = true;
        bildirimdurumu = 'Bildirimler açıldı';
      });
    }
    else {
      setState(() {
        Switchd = false;
        bildirimdurumu = 'Bildirimler kapalı';
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
        appBar: AppBar(
         centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),
        title: Text('Bildirimler'),
    ),
      body: Container(
      width: screenSize.width,
      height: screenSize.height,
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage(
      'assets/bildirim.jpg'
      ),
      fit: BoxFit.fill,
      ),
      shape: BoxShape.rectangle,
      ),
      padding: EdgeInsets.all(20.0),
       alignment: Alignment.topLeft,
       child: Column(
         children: [
           Row(mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text('Sulama bildirimleri : ',style: TextStyle( fontSize: 30 ),),
               Switch(value: Switchd,
                      onChanged: toggleSwitch,
                      activeColor: Colors.green,
                      activeTrackColor: Colors.white,
                      inactiveThumbColor: Colors.red,
                      inactiveTrackColor: Colors.grey,
               )

             ],
           ),
           Text(bildirimdurumu)

         ],

    )

    ),
    );
  }
}
