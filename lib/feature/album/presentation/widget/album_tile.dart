import 'package:apexive_test/feature/album/infrastructure/model/album_response.dart';
import 'package:flutter/material.dart';

class AlbumTile extends StatelessWidget {
  const AlbumTile({super.key, required this.album});
  final AlbumData album;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Card(
      color: colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Text(
          album.title,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
