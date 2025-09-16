import 'dart:convert';
import 'dart:developer';

import 'package:booklyapp/models/book_model.dart';
import 'package:http/http.dart' as http;

abstract class GetNewestBooksService {
  static Future<List<BookModel>> getNewestBooks() async {
    String apikey = "AIzaSyDvXMo2Ci8Jv1YkKQcpLbLWDyNuU7KOnUk";
    http.Response response = await http.get(
      Uri.parse(
        "https://www.googleapis.com/books/v1/volumes?q=programming:keyes&key=$apikey",
      ),
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);

      List<dynamic> items = data["items"];
      log("items lengh ${items.length}");

      List<BookModel> allBooks = [];

      for (int i = 0; i < 7; i++) {
        allBooks.add(BookModel.fromJson(items[i]));
      }
      return allBooks;
    } else {
      throw Exception(
        "There is erorr with statuse code no. ${response.statusCode}",
      );
    }
  }
}
