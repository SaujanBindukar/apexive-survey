import 'package:apexive_test/bloc_observer.dart';
import 'package:apexive_test/core/router/app_router.dart';
import 'package:apexive_test/core/theme/app_style.dart';
import 'package:apexive_test/core/theme/app_theme.dart';
import 'package:apexive_test/core/theme/theme_cubit/theme_cubit.dart';
import 'package:apexive_test/feature/timer/cubit/current_time_sheet_cubit/current_time_sheets_cubit.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit/timer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = const AppBlocObserver();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeCubit()),
        BlocProvider(create: (context) => TimerCubit()),
        BlocProvider(create: (context) => CurrentTimeSheetsCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, state) {
        return MaterialApp.router(
          title: 'Apexive',
          debugShowCheckedModeBanner: false,
          themeMode: state,
          routerConfig: router,
        );
      },
    );
  }
}
