import 'package:apexive_test/core/app_setup/failure/failure.dart';
import 'package:apexive_test/feature/album/infrastructure/model/album_response.dart';
import 'package:apexive_test/feature/album/infrastructure/respository/album_repository.dart';
import 'package:fpdart/src/either.dart';

const mockAlbumData = [
  AlbumData(id: 1, userId: 1, title: 'title 1'),
  AlbumData(id: 2, userId: 2, title: 'title 2'),
  AlbumData(id: 3, userId: 3, title: 'title 3'),
];

class MockAlbumRepository implements AlbumRepository {
  @override
  Future<Either<Failure, List<AlbumData>>> getAlbumList() {
    return Future.value(
      right(mockAlbumData),
    );
  }
}
