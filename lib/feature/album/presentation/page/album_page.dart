import 'package:apexive_test/feature/album/cubit/album_cubit.dart';
import 'package:apexive_test/feature/album/presentation/page/album_cubit_builder.dart';
import 'package:apexive_test/feature/album/presentation/widget/album_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({super.key});

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  void initState() {
    context.read<AlbumCubit>().getAlbumList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorScheme.primary,
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        title: Text(
          'Album Page',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: AlbumCubitBuilder(
        onData: (data) {
          //album list
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              //widget to display album data
              return AlbumTile(
                album: data[index],
              );
            },
          );
        },
      ),
    );
  }
}
