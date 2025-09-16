import 'package:booklyapp/Utils/app_colors.dart';
import 'package:booklyapp/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HorezintalListItem extends StatelessWidget {
  const HorezintalListItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .25,
              child: AspectRatio(
                aspectRatio: 165 / 225,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl:
                      bookModel.image ??
                      "https://lightwidget.com/wp-content/uploads/local-file-not-found-480x488.png",
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
          ),
          Positioned(
            right: 15,
            bottom: 30,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withValues(alpha: 0.5),
              ),
              child: const Padding(
                padding: EdgeInsets.all(4.0),
                child: Icon(Icons.favorite, color: AppColors.secMainColorWhite),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
