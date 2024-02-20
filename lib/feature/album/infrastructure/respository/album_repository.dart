import 'package:apexive_test/feature/album/infrastructure/model/album_response.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAlbumRepository {
  Future<Either<String, AlbumResponse>> getAlbumList();
}

class AlbumRepository implements IAlbumRepository {
  @override
  Future<Either<String, AlbumResponse>> getAlbumList() async {
    try {
      return const Right(AlbumResponse(data: []));
    } catch (e) {
      return const Left('');
    }
  }
}
