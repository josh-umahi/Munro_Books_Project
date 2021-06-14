import "dart:convert";
import "package:http/http.dart" as http;

import '../models/best_books_cover_arts.dart';
import '../models/best_books_thumbnails.dart';
import '../models/book_details.dart';

class BookRepository {
  final uri = Uri.https(
    "ca4d91cf-36bd-4783-886b-ce52a182dc17.mock.pstmn.io",
    "//v1/bestbooks",
  );

  Future<List<BestBooksCoverArts>> getBestBooksCoverArts() async {
    final response = await http.get(uri);
    final json = jsonDecode(response.body) as List;

    try {
      final List<BestBooksCoverArts> bestBooksCoverArts = [];
      for (var obj in json) {
        bestBooksCoverArts.add(BestBooksCoverArts.fromJson(obj));
      }
      return bestBooksCoverArts;
    } catch (e) {
      throw (e);
    }
  }

  Future<BestBooksThumbnails> getBestBooksThumbnails(
      String categoryTitle) async {
    final response = await http.get(uri);
    final json = jsonDecode(response.body) as List;

    try {
      for (var obj in json) {
        if (obj["bestOf"] == categoryTitle) {
          return BestBooksThumbnails.fromJson(obj);
        }
      }
      throw ("No books match the category: $categoryTitle");
    } catch (e) {
      throw (e);
    }
  }

  Future<BookDetails> getBookDetails(String id) async {
    final response = await http.get(uri);
    final json = jsonDecode(response.body) as List;

    try {
      for (var obj in json) {
        for (var bookObj in obj["books"] as List) {
          if (bookObj["id"] == id) {
            return BookDetails.fromJson(bookObj);
          }
        }
      }
      throw ("No book matches the id: $id");
    } catch (e) {
      throw (e);
    }
  }
}
