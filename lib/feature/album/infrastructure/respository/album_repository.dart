import 'package:apexive_test/core/app_setup/failure/failure.dart';
import 'package:apexive_test/core/services/app_endpoint.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

import 'package:apexive_test/core/app_setup/dio/dio_client.dart';
import 'package:apexive_test/feature/album/infrastructure/model/album_response.dart';

abstract class IAlbumRepository {
  Future<Either<Failure, List<AlbumData>>> getAlbumList();
}

class AlbumRepository implements IAlbumRepository {
  final _dioClient = DioClient();

  @override
  Future<Either<Failure, List<AlbumData>>> getAlbumList() async {
    try {
      final response = await _dioClient.dio.get(
        AlbumEP.getAlbumList,
      );
      final data = response.data as List;
      final albumList = data.map((e) => AlbumData.fromJson(e)).toList();
      return Right(albumList);
    } on DioException catch (error) {
      return Left(error.toFailure);
    } catch (e) {
      return Left(Failure.fromException(e));
    }
  }
}
