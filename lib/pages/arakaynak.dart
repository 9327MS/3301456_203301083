import 'package:bitkim/kompodent/rounded_button.dart';
import 'package:bitkim/pages/cklistnew.dart';
import 'package:bitkim/pages/ekran.dart';
import 'package:bitkim/pages/sehrdenem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

late String ckin;
late String sehiri;
final _firestore=FirebaseFirestore.instance;
CollectionReference moviesRef=_firestore.collection('kullanicicicek');

class arakaynak extends StatelessWidget {
  @override
  Widget build(BuildContext context)  {
    final firebaseUser = context.watch<User>();
    var babaRef = moviesRef.doc(firebaseUser.email);
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
        stream: babaRef.snapshots(),
        builder: (Buildcontext, AsyncSnapshot asyncSnapshot) {
          sehiri = '${asyncSnapshot.data.data()['sehir']}';
          ckin = '${asyncSnapshot.data.data()['bitki']}';
          if (!asyncSnapshot.hasData) {
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
                      'assets/wallpaperflare.jpgassets/wallpaperflare.jpg'
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
                      style: TextStyle(fontSize: 24)),
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