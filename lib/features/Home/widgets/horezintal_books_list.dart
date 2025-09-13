import 'package:flutter/material.dart';

import '../../../Utils/app_images.dart';

class HorezintalListOfBooks extends StatelessWidget {
  const HorezintalListOfBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: bookes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: AssetImage(bookes[index])),
          );
        },
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