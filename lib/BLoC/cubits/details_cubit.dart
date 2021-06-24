import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/repositories/book_repository.dart';
import '../../data/models/book_details.dart';

part 'details_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  final _bookRepository = BookRepository();

  DetailsCubit() : super(DetailsInitial());

  Future<void> getDetails(String id) async {
    try {
      emit(DetailsLoading());
      final bookDetails = await _bookRepository.getBookDetails(id);
      emit(DetailsLoaded(bookDetails));
    } catch (e) {
      emit(DetailsError(e));
    }
  }
}
