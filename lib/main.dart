import 'package:apexive_test/core/router/app_router.dart';
import 'package:apexive_test/core/theme/app_style.dart';
import 'package:apexive_test/feature/timer/cubit/current_time_sheets_cubit.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  await HydratedBloc.storage.clear();
  runApp(
    MultiBlocProvider(
      providers: [
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
    return MaterialApp.router(
      title: 'Apexive',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      routerConfig: router,
    );
  }
}
