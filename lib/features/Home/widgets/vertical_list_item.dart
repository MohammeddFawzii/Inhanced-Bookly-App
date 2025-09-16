import 'package:booklyapp/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class VerticalListItem extends StatelessWidget {
  const VerticalListItem({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),

            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl:
                  bookModel.image ??
                  "https://lightwidget.com/wp-content/uploads/local-file-not-found-480x488.png",
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text(
                  bookModel.headLine ?? "",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,

                child: Text(
                  bookModel.auther ?? "Stephen King",
                  style: const TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              Row(
                children: [
                  Text(
                    "${bookModel.price ?? "FREE"} ",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 90),
                  const Icon(Icons.star, color: Colors.amber),
                  Text(
                    "${bookModel.rating ?? " 0 "}",
                    style: const TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  Text(
                    "(${bookModel.ratingCount ?? "0"})",
                    style: const TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
