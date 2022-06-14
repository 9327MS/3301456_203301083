
import 'package:bitkim/pages/anim.dart';
import 'package:bitkim/pages/arakaynak.dart';
import 'package:bitkim/pages/ilk.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'uyaridiyalog.dart';
import 'dart:async';


class FlutterFireAuthService {
  final FirebaseAuth _firebaseAuth;
  FlutterFireAuthService(this._firebaseAuth);

  Stream<User?> get authStateChanges => _firebaseAuth.idTokenChanges();

  Future<User?> createAccount(
      String name, String email, String password) async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;

    try {
      User? user = (await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password))
          .user;

      if (user != null) {
        await _firestore
            .collection('users')
            .doc(_firebaseAuth.currentUser?.uid)
            .set({
          "user_id": _firebaseAuth.currentUser?.uid,
          "user_name": name,
          "user_email": email,
          "user_password": password,
        });

        return user;
      } else {
        return user;
      }
    } catch (e) {
      return null;
    }
  }

  Future<User?> logIn(

      String email, String password, BuildContext context) async {
    try {
      User? user = (await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password))
          .user;

      if (user != null) {
        Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) =>
            animasyon()),
        );
        return user;
      } else {
        cikis("HATA!", "Giriş yapılamadı", context);
        return user;
      }
    } catch (e) {
      //e.toString()
      cikis("Hata!", 'Hatalı giriş, lütfen şifrenizi ve mail adresininiz doğru girdiğinizden emin olun', context);
      return null;
    }
  }
  Future<void> logOut(BuildContext context) async {
    try {
      await _firebaseAuth.signOut().then((value) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => WelcomeScreen()));
      });
      cikis("Hoşçakal", "Yine bekleriz!", context);
    } catch (e) {
    }
  }

  Future<dynamic> controlAuth() async {
    _firebaseAuth.authStateChanges().listen((User? user) {
    });
  }
}