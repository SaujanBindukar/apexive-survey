import 'package:apexive_test/feature/album/infrastructure/model/album_response.dart';
import 'package:apexive_test/feature/album/infrastructure/respository/album_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_state.dart';

class AlbumCubit extends Cubit<AlbumState> {
  final AlbumRepository albumRepository;
  AlbumCubit({
    required this.albumRepository,
  }) : super(AlbumInitial());

  void getAlbumList() async {
    emit(AlbumLoading());
    final response = await albumRepository.getAlbumList();

    response.fold(
      (failure) {
        emit(AlbumError(message: failure.reason));
      },
      (success) {
        if (success.isEmpty) {
          emit(AlbumEmpty());
        } else {
          emit(AlbumLoaded(albumList: success));
        }
      },
    );
  }
}
