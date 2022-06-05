class DomainFirms {
  final String? gorus;
  final String? iletisim;

  DomainFirms(
      {this.gorus, this.iletisim,});

  Map<String, dynamic> toMap() {
    return {
      'görüş': gorus,
      'iletişim adresi': iletisim,
    };
  }

  DomainFirms.fromFirestore(Map<String, dynamic> firestore)
      : gorus = firestore['geribildirim'],
        iletisim = firestore['mailadresi'];
}