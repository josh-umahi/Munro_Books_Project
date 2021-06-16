import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../repositories/book_repository.dart';
import '../../models/best_books_cover_arts.dart';

part 'cover_arts_state.dart';

class CoverArtsCubit extends Cubit<CoverArtsState> {
  final _bookRepository = BookRepository();

  CoverArtsCubit() : super(CoverArtsInitial());

  Future<void> getBestBooksCoverArts() async {
    try {
      emit(CoverArtsLoading());
      final bestBooksCoverArt = await _bookRepository.getBestBooksCoverArts();
      emit(CoverArtsLoaded(bestBooksCoverArt));
    } catch (e) {
      emit(CoverArtsError(e));
    }
  }
}
