import 'package:booklyapp/Utils/app_colors.dart';
import 'package:booklyapp/Utils/app_images.dart';
import 'package:booklyapp/features/Home/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = "homeId";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColorDarkBlue,
      appBar: AppBar(
        backgroundColor: AppColors.mainColorDarkBlue,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: IconButton(
            icon: Transform.scale(
              scale: 3, // Set the scale factor to make the image bigger
              child: Image.asset(AppImages.appLogo),
            ),
            onPressed: () {
              // Add any action when the image is pressed
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: AppColors.secMainColorWhite),
            iconSize: 30,
          ),
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
