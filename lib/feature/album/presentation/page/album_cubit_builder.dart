import 'package:apexive_test/feature/album/cubit/album_cubit.dart';
import 'package:apexive_test/feature/album/infrastructure/model/album_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef OnData<T> = Widget Function(T data);
typedef OnError<T> = Widget Function(T error);
typedef OnLoading = Widget Function();
typedef OnEmpty = Widget Function();

class AlbumCubitBuilder extends StatelessWidget {
  const AlbumCubitBuilder({
    super.key,
    this.builder,
    this.onData,
    this.onEmpty,
    this.onError,
    this.onLoading,
    this.commonWidget,
    this.buildWhen,
  });

  final BlocWidgetBuilder<AlbumState>? builder;
  final BlocBuilderCondition<AlbumState>? buildWhen;

  final OnData<List<AlbumData>>? onData;
  final OnError<String?>? onError;
  final OnLoading? onLoading;
  final OnEmpty? onEmpty;
  final Widget? commonWidget;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AlbumCubit, AlbumState>(
      builder: builder ?? _builder,
      buildWhen: buildWhen ?? _buildWhen,
    );
  }

  bool _buildWhen(AlbumState lastState, AlbumState currentState) {
    return lastState != currentState;
  }

  Widget _builder(BuildContext context, AlbumState state) {
    if (state is AlbumLoaded) {
      return onData != null ? onData!(state.albumList) : Container();
    }
    if (state is AlbumError) {
      return onError != null
          ? onError!(state.message)
          : commonWidget ??
              Center(
                child: Text(state.message),
              );
    }
    if (state is AlbumLoading) {
      return onLoading != null
          ? onLoading!()
          : commonWidget ?? const CircularProgressIndicator();
    }
    if (state is AlbumEmpty) {
      return onEmpty != null ? onEmpty!() : commonWidget ?? Container();
    }

    return Container();
  }
}
