import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bitkim/Bodys/ilkbody.dart';
final _firestore=FirebaseFirestore.instance;
CollectionReference moviesRef=_firestore.collection('kullanicicicek');
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final firebaseUser = context.watch<User>();
    // var babaRef= moviesRef.doc(firebaseUser.email);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        title: Text(
          'Bitkim'
        ),
      ),
       body: Body()//StreamBuilder<DocumentSnapshot>(
      //   stream: babaRef.snapshots(),
      //   builder:(Buildcontext, AsyncSnapshot asyncSnapshot){
      //     sehiri = '${asyncSnapshot.data.data()['sehir']}';
      //     ckin =('${asyncSnapshot.data.data()['bitki']}');
      //     return Body();
      //   } ,
      // ),
    );
          }


  }
