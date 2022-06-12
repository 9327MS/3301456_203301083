import 'package:async/async.dart';
import 'package:bitkim/Bodys/girisbody.dart';
import 'package:bitkim/kompodent/rounded_button.dart';
import 'package:bitkim/pages/cklistnew.dart';
import 'package:bitkim/pages/ekran.dart';
import 'package:bitkim/pages/sehrdenem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

var ckin;
var sehiri;

class arakaynak extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    final _firestore=FirebaseFirestore.instance;
    CollectionReference cicekref=_firestore.collection('kullanicicicek');
    var bilgihesap = cicekref.doc(user_email);
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        title: Text(
            'Bitkim'
        ),
      ),
      body: StreamBuilder<DocumentSnapshot>(
        stream: bilgihesap.snapshots(),
        builder: (Buildcontext, AsyncSnapshot asyncSnapshot) {
          sehiri = '${asyncSnapshot.data.data()['sehir']}';
          ckin = '${asyncSnapshot.data.data()['bitki']}';
          if (FutureBuilder.debugRethrowError==true){
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          else {
            return Container(
              width: screenSize.width,
              height: screenSize.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/wallpaperflare.jpg'
                  ),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Hoşgeldiniz',
                      style: TextStyle(fontSize: 50,color: Colors.white,),),
                  SizedBox(height: 50,),
                  RoundedButton(
                    text: "Hoşbuldum...",
                    press: () {
                      if (ckin.isNotEmpty) {
                        if (sehiri.isNotEmpty) {
                          Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) =>
                              ekran()),
                          );
                        }
                        else {
                          Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) =>
                              sehr()),
                          );
                        }
                      }
                      else {
                        if (sehiri.isNotEmpty) {
                          Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) =>
                              cknew()),
                          );
                        }
                        else {
                          Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) =>
                              sehr()),
                          );
                        }
                      }
                    },
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
  }