part of 'details_cubit.dart';

@immutable
abstract class DetailsState {
  const DetailsState();
}

class DetailsInitial extends DetailsState {
  const DetailsInitial();
}

class DetailsLoading extends DetailsState {
  const DetailsLoading();
}

class DetailsLoaded extends DetailsState {
  final BookDetails bookDetails;

  const DetailsLoaded(this.bookDetails);
}

class DetailsError extends DetailsState {
  final error;
  DetailsError(this.error){
    print(error);
  }
}
