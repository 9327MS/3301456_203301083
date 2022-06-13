import 'package:flutter/material.dart';
import 'package:bitkim/Bodys/girisbody.dart';
import 'package:bitkim/kompodent/rounded_button.dart';
import 'package:bitkim/pages/cklistnew.dart';
import 'package:bitkim/pages/ekran.dart';
import 'package:bitkim/pages/sehrdenem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
var ckin;
var sehiri;
var email;
var isim;
class ekrandeneme extends StatefulWidget {
  const ekrandeneme({Key? key}) : super(key: key);

  @override
  State<ekrandeneme> createState() => _ekrandenemeState();
}

class _ekrandenemeState extends State<ekrandeneme> {
  @override
  Widget build(BuildContext context) {
    final _firestore=FirebaseFirestore.instance;
    CollectionReference cicekref=_firestore.collection('kullanicicicek');
    var bilgihesap = cicekref.doc(user_email);
    email =user_email;
    final screenSize = MediaQuery
        .of(context)
        .size;
    return StreamBuilder<DocumentSnapshot>(
      stream: bilgihesap.snapshots(),
      builder: (Buildcontext, AsyncSnapshot asyncSnapshot) {
        if (!asyncSnapshot.hasData)
        {return  Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child:
            LoadingAnimationWidget.inkDrop(
              color: Colors.green, size: 165
              ),
          ),
        );
        }
        else {
          sehiri = '${asyncSnapshot.data.data()['sehir']}';
          ckin = '${asyncSnapshot.data.data()['bitki']}';
          isim = '${asyncSnapshot.data.data()['isim']}';
                    if (ckin.isNotEmpty) {
                      if (sehiri.isNotEmpty) {
                            return ekran();
                      }
                      else {
                        return sehr();
                      }
                    }
                    else {
                      if (sehiri.isNotEmpty) {
                        return cknew();
                      }
                      else {
                        return sehr();
                      }
                    }
        }
      }
    );
  }
}
