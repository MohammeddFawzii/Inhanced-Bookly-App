import 'package:booklyapp/Utils/app_colors.dart';
import 'package:booklyapp/Utils/app_images.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    faddingAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: _animationController.value,
            child: Image(image: AssetImage(AppImages.appLogo)),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: _animationController.value,

                child: Container(
                  width: 20,
                  height: 1,
                  color: AppColors.secMainColorWhite,
                ),
              ),
              const Text(
                "     Your Way To Know More About Books..     ",
                style: TextStyle(color: AppColors.secMainColorWhite),
              ),
              Opacity(
                opacity: _animationController.value,

                child: Container(
                  width: 20,
                  height: 1,
                  color: AppColors.secMainColorWhite,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void faddingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );
    _animationController.addListener(() {
      setState(() {});
    });
    _animationController.forward();
    _animationController.repeat(reverse: true);
  }
}
