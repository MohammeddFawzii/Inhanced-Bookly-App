class BookModel {
  final String? headLine;
  final String? auther;
  final String? image;
  final String? puplishedDate;
  final String? description;
  final String? categories;
  final int? pagesNum;
  final num? price;
  final num? rating;
  final int? ratingCount;

  BookModel({
    required this.headLine,
    required this.auther,
    required this.image,
    required this.puplishedDate,
    required this.description,
    required this.categories,
    required this.pagesNum,
    required this.price,
    required this.rating,
    required this.ratingCount,
  });
  factory BookModel.fromJson(jsonData) {
    return BookModel(
      headLine: jsonData["volumeInfo"]["title"],
      auther: jsonData["volumeInfo"]["authors"][0],
      image: jsonData["volumeInfo"]["imageLinks"]?["thumbnail"],
      puplishedDate: jsonData["volumeInfo"]["publishedDate"],
      description: jsonData["volumeInfo"]["description"],
      categories: jsonData["volumeInfo"]["categories"][0],
      pagesNum: jsonData["volumeInfo"]["pageCount"],
      price: jsonData["volumeInfo"]["listPrice"]?["amount"],
      rating: jsonData["volumeInfo"]["averageRating"],
      ratingCount: jsonData["volumeInfo"]["ratingsCount"],
    );
  }
}
