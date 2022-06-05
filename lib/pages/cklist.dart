import 'package:bitkim/pages/ekran.dart';
import 'package:flutter/material.dart';
var ckin;
var ikon;
var cicek;
var resim;
var ciceko= '';
var isims = '';
class cklist extends StatefulWidget {
  const cklist({Key? key, String? ad,  String? cicekad,}) : super(key: key);

  @override
  _cklistState createState() => _cklistState();
}

class _cklistState extends State<cklist> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
        title: Text('Çiçekler'),
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.white, Colors.green]),
        ),
        alignment: Alignment.topCenter,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Adınız ve bitkinizin takma adı",
                  style: TextStyle(fontSize: 40, color: Colors.white)),
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.account_box),
                    border: OutlineInputBorder(),
                    hintText: "Adınız"),
                controller: t1,
                keyboardType: TextInputType.name,
                maxLength: 20,
                onChanged: (text){
                 setState(() {
                   isims =t1.text;
                 });
                },
              ),

              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.yard),
                    border: OutlineInputBorder(),
                    hintText: "Çiçeginiz"),
                controller: t2,
                keyboardType: TextInputType.name,
                maxLength: 20,
                onChanged: (text){
                  setState(() {
                     ciceko =t2.text;
                  });
                },
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    RaisedButton(
                        highlightColor: Colors.white,
                        elevation: 10,
                        onPressed: () {
                          cicek = 'Ametist';
                          ckin =  0;
                          resim = 'assets/images/amtes.jpg';
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ekran(
                              ),
                            ),
                          );
                        },
                        child: Text("Ametist"),
                        textColor: Colors.green),
                    RaisedButton(
                        highlightColor: Colors.white,
                        elevation: 10,
                        onPressed: () {
                          cicek = 'Papatya';
                          ckin =  1;
                          resim = 'assets/images/papatya.png';
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => ekran(
                          ),));
                        },
                        child: Text("Papatya"),
                        textColor: Colors.green),
                    RaisedButton(
                        highlightColor: Colors.white,
                        elevation: 10,
                        onPressed: () {
                          cicek = 'Gül';
                          ckin =  2;
                          resim = 'assets/images/gül.jpg';
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => ekran(
                          ),));
                        },
                        child: Text("Gül"),
                        textColor: Colors.green),
                    RaisedButton(
                        highlightColor: Colors.white,
                        elevation: 10,
                        onPressed: () {
                          cicek = 'Zambak';
                          ckin =  3;
                          resim = 'assets/images/zambak.jpg';
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) => ekran(

                          ),));
                        },
                        child: Text("Zambak"),
                        textColor: Colors.green),
                    ]
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                   RaisedButton(

                    highlightColor: Colors.white,
                    elevation: 10,
                    onPressed: () {
                      cicek = 'Lale';
                      ckin =  4;
                      resim = 'assets/images/lale.jpg';
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => ekran(

                      ),));
                    },
                    child: Text('Lale'),
                    textColor: Colors.green),
                   RaisedButton(
                    highlightColor: Colors.white,
                    elevation: 10,
                    onPressed: () {
                      cicek = 'Nergis';
                      ckin =  5;
                      resim = 'assets/images/nergis.jpg';
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(
                        builder: (context) => ekran(
                        ),
                      ),
                      );
                    },
                    child: Text("Nergis"),
                    textColor: Colors.green),
                   RaisedButton(
                    highlightColor: Colors.white,
                    elevation: 10,
                    onPressed: () {
                      cicek = 'Orkide';
                      ckin =  6;
                      resim = 'assets/images/orkide.jpg';
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => ekran(
                      ),
                      ),
                      );
                    },
                    child: Text("Orkide"),
                    textColor: Colors.green),
                   RaisedButton(
                    highlightColor: Colors.white,
                    elevation: 10,
                    onPressed: () {
                      cicek = 'Barış çiçeği';
                      ckin =  7;
                      resim = 'assets/images/barıs.jpg';
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => ekran(
                      ),
                      )
                      );
                    },
                    child: Text("Barış"),
                    textColor: Colors.green),
              ],
            ),
        ],
        ),
    )
    );
  }
}

