import 'package:apexive_test/feature/album/cubit/album_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import '../infrastructure/respository/mock_album_repository.dart';

void main() {
  late AlbumCubit albumCubit;
  MockAlbumRepository mockAlbumRepository;

  setUp(() {
    mockAlbumRepository = MockAlbumRepository();
    albumCubit = AlbumCubit(albumRepository: mockAlbumRepository);
  });

  blocTest<AlbumCubit, AlbumState>(
    'emits album loaded when getAlbumList is called',
    build: () => albumCubit,
    act: (bloc) => bloc.getAlbumList(),
    expect: () => <AlbumState>[
      AlbumLoading(),
      const AlbumLoaded(albumList: mockAlbumData)
    ],
  );

  //bloc test for failure
  // blocTest<AlbumCubit, AlbumState>(
  //   'emits album error when getAlbumList is called',
  //   build: () => albumCubit,
  //   act: (bloc) => bloc.getAlbumList(),
  //   expect: () => <AlbumState>[
  //     AlbumLoading(),
  //     const AlbumError(message: 'Something went wrong')
  //   ],
  // );
}
