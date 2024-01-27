import 'package:apexive_test/core/router/routes.dart';
import 'package:apexive_test/feature/timer/presentation/create_timesheet_screen.dart';
import 'package:apexive_test/feature/timer/presentation/timer_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.timerScreen,
      builder: (context, state) => const TimerScreen(),
    ),
    GoRoute(
      path: Routes.createTimeSheetScreen,
      builder: (context, state) => const CreateTimeSheetScreen(),
    ),
  ],
);
