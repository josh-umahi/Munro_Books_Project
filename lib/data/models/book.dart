abstract class Book {
  final String id;
  final String title;
  final List<String> listOfAuthors;
  final num priceAsDouble;
  final String imageUrl;
  final BookMaterial bookMaterial;
  final int stockTotal;

  Book({
    required this.id,
    required this.title,
    required this.listOfAuthors,
    required this.priceAsDouble,
    required this.imageUrl,
    required this.bookMaterial,
    required this.stockTotal,
  });

  String get authors {
    String authors = listOfAuthors[0];
    for (var i = 1; i < listOfAuthors.length; i++) {
      authors += ", ${listOfAuthors[i]}";
    }
    return authors;
  }

  String get price {
    return priceAsDouble.toStringAsFixed(2);
  }

  @override
  String toString() {
    return """
      id: $id
      title: $title
      authors: $authors
      price: $price
      imageUrl: $imageUrl
      bookMaterial: $bookMaterial
    """;
  }
}

enum BookMaterial {
  PAPERBACK,
  HARDCOVER,
}
