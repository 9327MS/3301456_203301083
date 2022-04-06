import 'package:bitkim/ekran.dart';
import 'package:flutter/material.dart';
import 'cklist.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BİTKİM',
      theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const MyHomePage(title: 'Bitkim',),

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
      final screenSize = MediaQuery
          .of(context)
          .size;
     /* if (cicek == null) {
      }
      else() {
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => ekran()),
        );
      };*/
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          title: Text(widget.title),
        ),
        body: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/giris.jpg'
              ),
              fit: BoxFit.fill,
            ),
            shape: BoxShape.rectangle,
            ),
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Text(
                'Hoşgeldiniz lütfen çiçeğinizi seçiniz...',
                style: TextStyle(fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Icon(
                    Icons.grass,
                    color: Colors.green,
                    size: 150,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: RaisedButton(
                      color: Colors.green,
                      highlightColor: Colors.white,
                      elevation: 10,
                      child: Text(
                        "Seç",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => cklist()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }

