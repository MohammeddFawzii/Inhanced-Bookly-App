


import 'package:booklyapp/Utils/app_colors.dart';
import 'package:booklyapp/Utils/app_images.dart';
import 'package:flutter/material.dart';

class VerticalListOfBooks extends StatelessWidget {
  const VerticalListOfBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Expanded(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: bookes.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.3,
                    child: Image(image: AssetImage(bookes[index])),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Book Data ",
                    style: TextStyle(
                      color: AppColors.secMainColorWhite,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


List<String> bookes = [
  AppImages.testBook,
  AppImages.testBook,
  AppImages.testBook,
  AppImages.testBook,
  AppImages.testBook,
  AppImages.testBook,
];