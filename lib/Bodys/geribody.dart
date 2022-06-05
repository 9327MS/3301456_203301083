// import 'package:bitkim/kompodent/rounded_button.dart';
// import 'package:bitkim/kompodent/rounded_input_field.dart';
// import 'package:bitkim/services/auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../arkaplanlar/geriarka.dart';
//
// class Body extends StatelessWidget {
//   String geribildirim = "";
//   String user_email = "";
//   String password = "";
//   @override
//   Widget build(BuildContext context) {
//     final firebaseUser = context.watch<User>();
//
//     Size size = MediaQuery.of(context).size;
//     return Background(
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               "Hesap " +  firebaseUser.email!,
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "Geri bildirim gönder",
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: size.height * 0.01),
//             RoundedInputField(
//               hintText: "Görüşleriniz",
//               onChanged: (value) {
//                  geribildirim = value;
//               },
//             ),
//             RoundedInputField(
//               hintText: "İsteğe bağlı iletişim mail adresi",
//               onChanged: (value) {
//                 user_email = value;
//               },
//             ),
//             RoundedButton(
//               text: "GERİ BİLDİRİMİ GÖNDER",
//               press: () {
//                 context
//                     .read<FlutterFireAuthService>()
//                     .createAccount(geribildirim, user_email, password);
//               },
//             ),
//             SizedBox(height: size.height * 0.03),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'package:bitkim/pages/ekran.dart';
// import 'package:flutter/material.dart';
// import 'cklist.dart';
// import 'package:firebase_core/firebase_core.dart';
// import '../firebase_options.dart';
//
// void main() {
//   runApp(const MyApp());
//
// }
//
// class MyApp extends StatelessWidget {
//
//   const MyApp({Key? key}) : super(key: key);
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'BİTKİM',
//       theme: ThemeData(
//           primarySwatch: Colors.green,
//           visualDensity: VisualDensity.adaptivePlatformDensity),
//       home: const MyHomePage(title: 'Bitkim',),
//
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery
//         .of(context)
//         .size;
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         titleTextStyle: TextStyle(
//             fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
//         title: Text(widget.title),
//       ),
//       body: Container(
//         width: screenSize.width,
//         height: screenSize.height,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//                 'assets/giris.jpg'
//             ),
//             fit: BoxFit.fill,
//           ),
//           shape: BoxShape.rectangle,
//         ),
//         alignment: Alignment.bottomCenter,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             const Text(
//               'Hoşgeldiniz lütfen çiçeğinizi seçiniz...',
//               style: TextStyle(fontSize: 20,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.bold),
//             ),
//             Column(
//               children: [
//                 Icon(
//                   Icons.grass,
//                   color: Colors.green,
//                   size: 150,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 15.0),
//                   child: RaisedButton(
//                     color: Colors.green,
//                     highlightColor: Colors.white,
//                     elevation: 10,
//                     child: Text(
//                       "Giriş yap",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     onPressed: () {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(builder: (context) => cklist()),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

