import 'package:flutter_test/flutter_test.dart';
import '../lib/data/repositories/book_repository.dart';

void main() {
  group("class: BookRepository", () {
    BookRepository bookRepository = BookRepository();

    test("method: getBestBooksCoverArt", () async {
      final bestBooksCoverArt = await bookRepository.getBestBooksCoverArts();
      for (var bookCoverArt in bestBooksCoverArt) {
        print('');
        print(bookCoverArt.categoryTitle);
        for (var bookCoverArt in bookCoverArt.bookCoverArts) {
          print(bookCoverArt.toString());
        }
      }
    });

    test("method: getBestBooksThumbnails", () async {
      final bestBooksThumbnails =
          await bookRepository.getBestBooksThumbnails("Paperback Nonfiction");
      print(bestBooksThumbnails.categoryTitle);
      for (var bookThumbnail in bestBooksThumbnails.bookThumbnails) {
        print(bookThumbnail.toString());
      }
    });

    test("method: getBookDetails", () async {
      final bookDetails = await bookRepository.getBookDetails("102");
      print(bookDetails.toString());
    });
  });
}
