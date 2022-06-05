import 'package:bitkim/model/domain_firms.dart';
import 'package:bitkim/services/firestore_domainfirms_service.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';


class DomainFirmsProvider with ChangeNotifier {

  final firestoreService = FirestoreDomainFirmsService();
  String? _gorus;
  String? _iletisim;

  var uuid = Uuid();

  String? get gorus => _gorus;

  String? get iletisim => _iletisim;

  changegorus(String value) {
    _gorus = value;
    notifyListeners();
  }

  changeiletisim(String value) {
    _iletisim = value;
    notifyListeners();
  }

  loadValues(DomainFirms domainfirm) {
    _gorus = domainfirm.gorus;
    _iletisim = domainfirm.iletisim;
  }

  saveDomainFirm() {
    if (_gorus == null) {
      var newDomainFirm = DomainFirms(
          gorus: uuid.v4(),
          iletisim: iletisim,
          );
      firestoreService.saveDomainFirm(newDomainFirm);
    } else {
      //Update
      var updatedDomainFirm = DomainFirms(
          gorus:gorus,
          iletisim: iletisim,
         );
      firestoreService.saveDomainFirm(updatedDomainFirm);
    }
  }

  removeDomainFirm(String id) {
    firestoreService.removeDomainFirm(id);
  }
}