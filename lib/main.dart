import 'package:apexive_test/bloc_observer.dart';
import 'package:apexive_test/core/app/cubit/app_cubit.dart';
import 'package:apexive_test/core/app/cubit/app_cubit_builder.dart';
import 'package:apexive_test/core/router/app_router.dart';
import 'package:apexive_test/core/theme/app_theme.dart';
import 'package:apexive_test/feature/album/cubit/album_cubit.dart';
import 'package:apexive_test/feature/album/infrastructure/respository/album_repository.dart';
import 'package:apexive_test/feature/timer/cubit/current_time_sheet_cubit/current_time_sheets_cubit.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit/timer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  await _initializeHydratedBloc();
  runApp(const _AppRunner());
}

class _AppRunner extends StatelessWidget {
  const _AppRunner();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AlbumRepository>(
          create: (context) => AlbumRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppCubit()),
          BlocProvider(create: (context) => TimerCubit()),
          BlocProvider(
            create: (context) => CurrentTimeSheetsCubit(),
          ),
          BlocProvider(
            create: (context) => AlbumCubit(
              albumRepository: context.read<AlbumRepository>(),
            ),
          ),
        ],
        child: const MyApp(),
      ),
    );
  }
}

Future<void> _initializeHydratedBloc() async {
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCubitBuilder(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Apexive',
          debugShowCheckedModeBanner: false,
          themeMode: state.themeMode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          routerConfig: router,
        );
      },
    );
  }
}
