import 'package:bitkim/kompodent/secbutonu.dart';
import 'package:bitkim/pages/ekran.dart';
import 'package:bitkim/pages/arakaynak.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
class cknew extends StatefulWidget {
  const cknew({Key? key}) : super(key: key);

  @override
  State<cknew> createState() => _cknewState();
}
var selectedValue;
class _cknewState extends State<cknew> {
  @override
  final List<String> items = [
    'Ametist',
    'Papatya',
    'Gül',
    'Zambak',
    'Lale',
    'Nergis',
    'Orkide',
    'Barış'
    ];
  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        automaticallyImplyLeading: false,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
        title: Text('Çiçeğiniz'),
      ),
      body: Center(
        child: GestureDetector(
        child:Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/ivan-skorovarov-qvFtW-FsUa0-unsplash.jpg'
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
                  Icons.local_florist,
                  color: Colors.green,
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
                          'Çiçeğinizi seçiniz',
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
                      selectedValue = value;
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
                    color: Colors.green,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 200,
                  dropdownPadding: null,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.green,
                  ),
                  dropdownElevation: 8,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,
                  scrollbarAlwaysShow: true,
                  offset: const Offset(-20, 0),
                ),
                secbutonu(
                    text: ('Bitir'),
                    color: Colors.white,
                    textColor: Colors.green,
                    press: () async {
                      if(selectedValue!=null) {
                        String message;
                        try {
                          final collection =
                          FirebaseFirestore.instance.collection('kullanicicicek');
                          await collection.doc(email).set({
                            'sehir': sehiri,
                            'bitki': items.indexOf(selectedValue),
                            'isim': isim,
                          });
                          ckin=items.indexOf(selectedValue).toString();
                          message = 'Hoşgeldiniz ';
                        }
                        catch (e) {
                          message = 'Hata'+ e.toString();
                        }
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(message)));
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ekran()),
                        );
                      }
                      else{
                        String message;
                        message = 'Lütfen bitkinizi seçin!';
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Text(message)));
                      }
                    }
                )
              ],
            ),
      ),
    ),
        ),
          onVerticalDragUpdate: (details) {},
          onHorizontalDragUpdate: (details) async{
            if (details.delta.direction > 0) {
              if(selectedValue!=null) {
                String message;
                try {
                  final collection =
                  FirebaseFirestore.instance.collection('kullanicicicek');
                  await collection.doc(email).set({
                    'sehir': sehiri,
                    'bitki': items.indexOf(selectedValue),
                    'isim': isim,
                  });
                  ckin=items.indexOf(selectedValue).toString();
                }
                catch (e) {
                  message = 'Hata'+ e.toString();
                }
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ekran()),
                );
              }
              else{
              }
            }
            else {}
          },
      ),
      ),
    );
  }
}