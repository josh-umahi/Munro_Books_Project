class BestBooksCoverArts {
  final String categoryTitle;
  final List<BookCoverArt> bookCoverArts;

  BestBooksCoverArts(this.categoryTitle, this.bookCoverArts);

  factory BestBooksCoverArts.fromJson(Map<String, dynamic> json) {
    try {
      final categoryTitle = json["bestOf"] as String;
      final List<BookCoverArt> bookCoverArts = [];
      for (var book in json["books"]) {
        bookCoverArts.add(BookCoverArt.fromJson(book));
      }

      return BestBooksCoverArts(categoryTitle, bookCoverArts);
    } catch (e) {
      throw (e);
    }
  }
}

class BookCoverArt {
  final String id;
  final String imageUrl;

  BookCoverArt(this.id, this.imageUrl);

  factory BookCoverArt.fromJson(Map<String, dynamic> json) {
    try {
      final id = json["id"];
      final imageUrl = json["localImageUrl"];

      return BookCoverArt(id, imageUrl);
    } catch (e) {
      throw (e);
    }
  }

  @override
  String toString() {
    return "$id: $imageUrl";
  }
}
