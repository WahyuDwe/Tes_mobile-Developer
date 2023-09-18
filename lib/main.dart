import 'package:flutter/material.dart';
import 'package:test_arutalalab/screens/home/home_page.dart';
import 'package:test_arutalalab/screens/login/login_page.dart';
import 'package:test_arutalalab/screens/splash/splash_page.dart';

import 'core/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test Arutalalab',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor!),
        useMaterial3: true,
      ),
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => const SplashPage(),
        LoginPage.routeName: (context) => const LoginPage(),
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}
