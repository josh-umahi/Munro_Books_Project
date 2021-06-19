import 'book.dart';

class BestBooksThumbnails {
  final String categoryTitle;
  final List<BookThumbnail> bookThumbnails;

  BestBooksThumbnails(this.categoryTitle, this.bookThumbnails);

  factory BestBooksThumbnails.fromJson(Map<String, dynamic> json) {
    try {
      final categoryTitle = json["bestOf"] as String;
      final List<BookThumbnail> bookThumbnails = [];
      for (var book in json["books"]) {
        bookThumbnails.add(BookThumbnail.fromJson(book));
      }

      return BestBooksThumbnails(categoryTitle, bookThumbnails);
    } catch (e) {
      throw (e);
    }
  }
}

class BookThumbnail extends Book {
  final String id;
  final String title;
  final List<String> listOfAuthors;
  final num priceAsDouble;
  final String imageUrl;
  final BookMaterial bookMaterial;
  final int stockTotal;

  BookThumbnail({
    required this.id,
    required this.title,
    required this.listOfAuthors,
    required this.priceAsDouble,
    required this.imageUrl,
    required this.bookMaterial,
    required this.stockTotal,
  }) : super(
          id: id,
          title: title,
          listOfAuthors: listOfAuthors,
          priceAsDouble: priceAsDouble,
          imageUrl: imageUrl,
          bookMaterial: bookMaterial,
          stockTotal: stockTotal,
        );

  factory BookThumbnail.fromJson(Map<String, dynamic> json) {
    try {
      final id = json["id"];
      final title = json["title"];
      final priceAsDouble = json["price"] as num;
      final imageUrl = json["localImageUrl"];
      final stockTotal = json["inventory"] as int;
      final bookMaterial =
          json["isPaperback"] ? BookMaterial.PAPERBACK : BookMaterial.HARDCOVER;
      final List<String> listOfAuthors = [];
      for (var author in json["authors"] as List) {
        listOfAuthors.add(author);
      }

      return BookThumbnail(
        id: id,
        title: title,
        listOfAuthors: listOfAuthors,
        priceAsDouble: priceAsDouble,
        imageUrl: imageUrl,
        bookMaterial: bookMaterial,
        stockTotal: stockTotal,
      );
    } catch (e) {
      throw (e);
    }
  }
}
