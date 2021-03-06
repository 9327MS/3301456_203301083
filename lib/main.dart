import 'package:bitkim/firebase_options.dart';
import 'package:bitkim/pages/ilk.dart';
import 'package:bitkim/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bitkim/pages/girisekran%C4%B1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bitkim/pages/kay%C4%B1t.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<FlutterFireAuthService>(
            create: (_) => FlutterFireAuthService(FirebaseAuth.instance),
          ),
          StreamProvider(
            create: (context) =>
            context.read<FlutterFireAuthService>().authStateChanges,
            initialData: null,
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'BİTKİM',
          theme: ThemeData(
             primarySwatch: Colors.green,
             visualDensity: VisualDensity.adaptivePlatformDensity
          ),
          home: WelcomeScreen(),
          routes: {
            "home": (_) => WelcomeScreen(),
            "Kayıt ol": (_) => SignUpScreen(),
            "login": (_) => giris(),
          },
        ));
  }
}
