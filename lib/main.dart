import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lab_flutter/features/login/presenation/views/log_in.dart';
import 'package:lab_flutter/features/login/presenation/views/sing_up.dart';
import 'package:lab_flutter/features/main/presenation/views/main_screen.dart';
import 'package:lab_flutter/features/product_view/presenation/views/product_view.dart';
import 'package:lab_flutter/features/splash_feature/presentation/views/splash_view.dart';
import 'features/home_view/presenation/views/home_view.dart';
import 'features/pageView/presentation/views/pageview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user == null) {
        log('User is currently signed out!');
      } else {
        log('User is currently signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        SplashView.id: (context) => const SplashView(),
        PagesScreen.id: (context) => const PagesScreen(),
        LogIn.id: (context) => const LogIn(),
        SingUp.id: (context) => const SingUp(),
        MainScreen.id: (context) => const MainScreen(),
        HomeView.id: (context) => const HomeView(),
        ProductView.id: (context) => const ProductView(),
      },
      home: const SplashView(),
    );
  }
}
