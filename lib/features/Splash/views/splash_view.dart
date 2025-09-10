import 'package:booklyapp/Utils/app_colors.dart';
import 'package:booklyapp/features/Home/views/home_view.dart';
import 'package:booklyapp/features/Splash/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const String id = "SplashId";

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayAndNavigat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColorDarkBlue,
        body: SplashViewBody(),
      ),
    );
  }

  void delayAndNavigat() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushNamed(context, HomeView.id);
    });
  }
}
