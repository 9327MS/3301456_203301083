import 'package:bitkim/kompodent/secbutonu.dart';
import 'package:bitkim/pages/cklistnew.dart';
import 'package:bitkim/pages/arakaynak.dart';
import 'package:bitkim/pages/havadurumu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:provider/provider.dart';
class sehr extends StatefulWidget {
  const sehr({Key? key}) : super(key: key);

  @override
  State<sehr> createState() => _sehrState();
}

var selectedValue;
class _sehrState extends State<sehr> {
  final List<String> items = [
    'Adana', 'Adıyaman', 'Afyon','Ağrı', 'Amasya', 'Ankara', "Antalya", "Artvin", "Aydın", "Balıkesir", "Bilecik", "Bingöl", "Bitlis", "Bolu", "Burdur", "Bursa", "Çanakkale", "Çankırı", "Çorum", "Denizli", "Diyarbakır", "Edirne", "Elazığ", "Erzincan", "Erzurum", "Eskişehir", "Gaziantep", "Giresun", "Gümüşhane", "Hakkari", "Hatay", "Isparta", "İçel (Mersin)", "İstanbul", "İzmir", "Kars", "Kastamonu", "Kayseri", "Kırklareli", "Kırşehir", "Kocaeli", "Konya", "Kütahya", "Malatya", "Manisa", "Kahramanmaraş", "Mardin", "Muğla", "Muş", "Nevşehir", "Niğde", "Ordu", "Rize", "Sakarya", "Samsun", "Siirt", "Sinop", "Sivas", "Tekirdağ", "Tokat", "Trabzon", "Tunceli", "Şanlıurfa", "Uşak", "Van", "Yozgat", "Zonguldak", "Aksaray", "Bayburt", "Karaman", "Kırıkkale", "Batman", "Şırnak", "Bartın", "Ardahan", "Iğdır", "Yalova", "Karabük", "Kilis", "Osmaniye", "Düzce"
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        automaticallyImplyLeading: false,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
        title: Text('Konumum'),
      ),
      body: Center(
        child:Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/matthias-schroder-KoBCaTPydqs-unsplash.jpg'
              ),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.rectangle,
            ),
          alignment: Alignment.center,
        child: DropdownButtonHideUnderline(
            child: SingleChildScrollView(
              child: Column(
             children: [
               Icon(
                 Icons.location_city,
                 color: Colors.blue,
                 size: 350,
               ),
               DropdownButton2(
                isExpanded: true,
                hint: Row(
                  children: const [
                    Icon(
                      Icons.list,
                      size: 16,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      child: Text(
                        'Şehrinizi seçin',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                iconSize: 14,
                iconEnabledColor: Colors.white,
                iconDisabledColor: Colors.grey,
                buttonHeight: screenSize.height*0.1,
                buttonWidth: screenSize.width*0.5,
                buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                buttonDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Colors.black26,
                  ),
                  color: Colors.blue,
                ),
                buttonElevation: 2,
                itemHeight: 40,
                itemPadding: const EdgeInsets.only(left: 14, right: 14),
                dropdownMaxHeight: screenSize.height*0.4,
                dropdownWidth: 200,
                dropdownPadding: null,
                dropdownDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.blue,
                ),
                dropdownElevation: 8,
                scrollbarRadius: const Radius.circular(40),
                scrollbarThickness: 6,
                scrollbarAlwaysShow: true,
                offset: const Offset(-20, 0),
          ),
               secbutonu(
                 text: ('İleri'),
                 color: Colors.white,
                 textColor: Colors.blue,
                 press: () async {
                   if(selectedValue!=null) {
                     String message;
                     try {
                       final collection =
                       FirebaseFirestore.instance.collection('kullanicicicek');
                       await collection.doc(email).set({
                         'bitki':ckin,
                         'sehir': selectedValue,
                         'isim': isim,
                       });
                       message = 'Çiçek seçin ';
                     }
                     catch (e) {
                       message = ''+ e.toString();
                     }
                    if(ckin.isNotEmpty) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('Tamamdır ayarladık...')));
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) =>
                          HomeScreen()),
                      );
                      sehiri= selectedValue;
                    }
                    else{
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) =>
                          cknew()),
                      );
                      sehiri=selectedValue;
                    }
                   }
                   else{
                     String message;
                     message = 'Lütfen şehirinizi seçin!';
                     ScaffoldMessenger.of(context)
                         .showSnackBar(SnackBar(content: Text(message)));
                   }
                 }
               )
             ],
           ),
        )
        ),
        ),
    ),
      );
  }
}