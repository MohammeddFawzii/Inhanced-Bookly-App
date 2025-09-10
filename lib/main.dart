import 'package:booklyapp/features/Home/views/home_view.dart';
import 'package:booklyapp/features/Splash/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeView.id: (context) => HomeView(),
        SplashView.id: (context) => SplashView(),
      },
      initialRoute: SplashView.id,
    );
  }
}
