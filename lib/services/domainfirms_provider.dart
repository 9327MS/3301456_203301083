import 'package:bitkim/model/domain_firms.dart';
import 'package:bitkim/services/firestore_domainfirms_service.dart';
import 'package:flutter/material.dart';
import 'package:bitkim/model/domain_firms.dart';
import 'package:uuid/uuid.dart';


class DomainFirmsProvider with ChangeNotifier {

  final firestoreService = FirestoreDomainFirmsService();
  String? _id;
  String? _name;
  String? _loginname;
  String? _loginpassword;
  String? _web;

  var uuid = Uuid();

  String? get id => _id;

  String? get name => _name;

  String? get loginname => _loginname;

  String? get loginpassword => _loginpassword;

  String? get web => _web;

  changeName(String value) {
    _name = value;
    notifyListeners();
  }

  changeLoginName(String value) {
    _loginname = value;
    notifyListeners();
  }

  changeLoginPassword(String value) {
    _loginpassword = value;
    notifyListeners();
  }

  changeWeb(String value) {
    _web = value;
    notifyListeners();
  }
}