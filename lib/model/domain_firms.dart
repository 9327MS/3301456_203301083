class DomainFirms {
  final String? bitki;
  final String? sehirim;

  DomainFirms(
      {this.bitki, this.sehirim,});

  Map<String, dynamic> toMap() {
    return {
      'bitkim': bitki,
      'sehir': sehirim,
    };
  }

  DomainFirms.fromFirestore(Map<String, dynamic> firestore)
      : bitki = firestore['bitkim'],
        sehirim = firestore['sehir'];
}