import 'dart:developer';

import 'package:booklyapp/features/Home/widgets/horezintal_list_item.dart';
import 'package:booklyapp/models/book_model.dart';
import 'package:flutter/material.dart';

class HorezotalListViewBuilder extends StatelessWidget {
  const HorezotalListViewBuilder({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: books.length,
        itemBuilder: (context, index) {


          return HorezintalListItem(bookModel: books[index]);
        },
      ),
    );
  }
}
