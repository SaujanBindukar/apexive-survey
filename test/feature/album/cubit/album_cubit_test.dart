import 'package:apexive_test/feature/album/cubit/album_cubit.dart';
import 'package:apexive_test/feature/album/infrastructure/model/album_response.dart';
import 'package:apexive_test/feature/album/infrastructure/respository/album_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

const mockAlbumData = [
  AlbumData(id: 1, userId: 1, title: 'title 1'),
  AlbumData(id: 2, userId: 2, title: 'title 2'),
  AlbumData(id: 3, userId: 3, title: 'title 3'),
];

class MockAlbumRepository extends Mock implements AlbumRepository {}

void main() {
  blocTest<AlbumCubit, AlbumState>(
    'emits album loaded when getAlbumList is called',
    build: () {
      final mockAlbumRepository = MockAlbumRepository();
      when(() => mockAlbumRepository.getAlbumList())
          .thenAnswer((_) async => right(mockAlbumData));
      final albumCubit = AlbumCubit(albumRepository: mockAlbumRepository);
      return albumCubit;
    },
    act: (bloc) => bloc.getAlbumList(),
    expect: () => <AlbumState>[
      AlbumLoading(),
      const AlbumLoaded(albumList: mockAlbumData)
    ],
  );

  blocTest<AlbumCubit, AlbumState>(
    'emits empty album state when getAlbumList is called',
    build: () {
      final mockAlbumRepository = MockAlbumRepository();
      when(() => mockAlbumRepository.getAlbumList())
          .thenAnswer((_) async => right([]));
      final albumCubit = AlbumCubit(albumRepository: mockAlbumRepository);
      return albumCubit;
    },
    act: (bloc) => bloc.getAlbumList(),
    expect: () => <AlbumState>[AlbumLoading(), AlbumEmpty()],
  );
}
