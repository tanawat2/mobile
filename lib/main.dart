import 'package:flutter/material.dart';
import 'package:mn/add_comment.dart';
import 'package:mn/Ariespage.dart';
import 'package:mn/Tauruspage.dart';
import 'package:mn/homepage.dart';
import 'package:mn/Geminipage.dart';
import 'package:mn/commentpage.dart';
import 'package:mn/firstscreen.dart';
import 'package:mn/Cancerpage.dart';
import 'package:mn/Leopage.dart';
import 'package:mn/Virgopage.dart';
import 'package:mn/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mn/Librapage.dart';
import 'package:mn/Scorpiopage.dart';
import 'package:mn/Sagittariuspage.dart';
import 'package:mn/registerpage.dart';
import 'package:mn/contact.dart';
import 'package:mn/Capricornpage.dart';
import 'package:mn/Aquariuspage.dart';
import 'package:mn/Piscespage.dart';
import 'home.dart';
import 'homepage.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp();
  }

  MaterialApp buildMaterialApp() {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown),
        
      initialRoute: '/',
      routes: {
        // '/':(context) =>  const HomePage(title: '12',),
        '/': (context) => const Firstscreen(),
        '/loginpage': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(
              title: '12 ราศี'
            ),
        '/commentpage': (context) => const CommentPage(),
        '/contact': (context) => const SettingPage(),
        '/homepage': (context) =>  const BodyHome(),
        '/Ariespage': (context) => const AriesPage(),
        '/Tauruspage': (context) => const TaurusPage(),
        '/Geminipage': (context) => const GeminiPage(),
        '/Cancerpage': (context) => const CancerPage(),
        '/Leopage': (context) => const LeoPage(),
        '/Virgopage': (context) => const VirgoPage(),
        '/Librapage': (context) => const LibraPage(),
        '/Scorpiopage': (context) => const ScorpioPage(),
        '/Sagittariuspage': (context) => const SagittariusPage(),
        '/Capricornpage': (context) => const CapricornPage (),
        '/Aquariuspage': (context) =>const AquariusPage(),
        '/Piscespage': (context) => const PiscesPage(),
        '/add_comment': (context) => const AddCommentPage(),
      },
    );
  }
}
