part of 'thumbnails_cubit.dart';

@immutable
abstract class ThumbnailsState {
  const ThumbnailsState();
}

class ThumbnailsInitial extends ThumbnailsState {
  const ThumbnailsInitial();
}

class ThumbnailsLoading extends ThumbnailsState {
  const ThumbnailsLoading();
}

class ThumbnailsLoaded extends ThumbnailsState {
  final BestBooksThumbnails bestBooksThumbnails;

  const ThumbnailsLoaded(this.bestBooksThumbnails);
}

class ThumbnailsError extends ThumbnailsState {
  final error;
  ThumbnailsError(this.error){
    print(error);
  }
}
