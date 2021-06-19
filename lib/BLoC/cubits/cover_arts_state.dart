part of 'cover_arts_cubit.dart';

@immutable
abstract class CoverArtsState {
  const CoverArtsState();
}

class CoverArtsInitial extends CoverArtsState {
  const CoverArtsInitial();
}

class CoverArtsLoading extends CoverArtsState {
  const CoverArtsLoading();
}

class CoverArtsLoaded extends CoverArtsState {
  final List<BestBooksCoverArts> bestBooksCoverArts;

  const CoverArtsLoaded(this.bestBooksCoverArts);
}

class CoverArtsError extends CoverArtsState {
  final error;
  CoverArtsError(this.error){
    print(error);
  }
}
