import 'package:booklyapp/features/Home/widgets/horezintal_list_view_builder.dart'
    show HorezotalListViewBuilder;
import 'package:booklyapp/services/get_all_books_service.dart';
import 'package:flutter/material.dart';

class HorezintalListOfBooksFutureBuilder extends StatelessWidget {
  const HorezintalListOfBooksFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetAllBooksService.getAllBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return HorezotalListViewBuilder(books: snapshot.data!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        } else {
          return Center(
            child: Text(
              snapshot.error.toString(),
              style: const TextStyle(color: Colors.white),
            ),
          );
        }
      },
    );
  }
}
