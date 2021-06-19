import 'book.dart';

class BookDetails extends Book {
  final String id;
  final String title;
  final List<String> listOfAuthors;
  final num priceAsDouble;
  final String imageUrl;
  final BookMaterial bookMaterial;
  final int stockTotal;
  final String description;

  BookDetails({
    required this.id,
    required this.title,
    required this.listOfAuthors,
    required this.priceAsDouble,
    required this.imageUrl,
    required this.bookMaterial,
    required this.stockTotal,
    required this.description,
  }) : super(
          id: id,
          title: title,
          listOfAuthors: listOfAuthors,
          priceAsDouble: priceAsDouble,
          imageUrl: imageUrl,
          bookMaterial: bookMaterial,
          stockTotal: stockTotal,
        );

  factory BookDetails.fromJson(Map<String, dynamic> json) {
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
      final description = json["description"];

      return BookDetails(
        id: id,
        title: title,
        listOfAuthors: listOfAuthors,
        priceAsDouble: priceAsDouble,
        imageUrl: imageUrl,
        bookMaterial: bookMaterial,
        stockTotal: stockTotal,
        description: description,
      );
    } catch (e) {
      throw (e);
    }
  }

  @override
  String toString() {
    String desc = description;
    if (description.length >= 100) {
      desc = description.substring(0, 100) + "...";
    }

    return """
      id: $id
      title: $title
      authors: $authors
      price: $price
      imageUrl: $imageUrl
      bookMaterial: $bookMaterial
      description: $desc
    """;
  }
}
