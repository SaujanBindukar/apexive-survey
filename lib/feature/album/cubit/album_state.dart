part of 'album_cubit.dart';

@immutable
sealed class AlbumState extends Equatable {
  const AlbumState();

  @override
  List<Object> get props => [];
}

final class AlbumInitial extends AlbumState {}

final class AlbumLoading extends AlbumState {}

final class AlbumEmpty extends AlbumState {}

final class AlbumLoaded extends AlbumState {
  final List<AlbumData> albumList;

  const AlbumLoaded({
    required this.albumList,
  });
}

final class AlbumError extends AlbumState {
  final String message;

  const AlbumError({
    required this.message,
  });
}
