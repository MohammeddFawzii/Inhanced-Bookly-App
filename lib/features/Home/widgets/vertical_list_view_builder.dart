import 'package:booklyapp/features/Home/widgets/vertical_list_item.dart';
import 'package:booklyapp/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class VerticalListViewBuilder extends StatelessWidget {
  const VerticalListViewBuilder({super.key, required this.books});

  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: books.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return VerticalListItem(bookModel: books[index]);
      },
    );
  }
}
