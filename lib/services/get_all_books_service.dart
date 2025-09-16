import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:booklyapp/models/book_model.dart';

abstract class GetAllBooksService {
  static Future<List<BookModel>> getAllBooks() async {
    http.Response response = await http.get(
      Uri.parse("https://www.googleapis.com/books/v1/volumes?q=search+terms"),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      List<dynamic> items = data["items"];
      log("items lengh ${items.length}");

      List<BookModel> allBooks = [];

      for (int i = 0; i < items.length; i++) {
        allBooks.add(BookModel.fromJson(items[i]));
      }
      return allBooks;
    } else {
      log("eroooooooooooor");
      throw Exception(
        "There is erorr with statuse code no. ${response.statusCode}",
      );
    }
  }
}
