import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../repositories/book_repository.dart';
import '../../models/best_books_thumbnails.dart';

part 'thumbnails_state.dart';

class ThumbnailsCubit extends Cubit<ThumbnailsState> {
  final _bookRepository = BookRepository();

  ThumbnailsCubit() : super(ThumbnailsInitial());

  Future<void> getCategoryThumbnails(String categoryTitle) async {
    try {
      emit(ThumbnailsLoading());
      final bestBooksCoverArt = await _bookRepository.getBestBooksThumbnails(categoryTitle);
      emit(ThumbnailsLoaded(bestBooksCoverArt));
    } catch (e) {
      emit(ThumbnailsError(e));
    }
  }

  void clearCategoryThumbnails() => emit(ThumbnailsInitial());
}