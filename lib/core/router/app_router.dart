import 'package:apexive_test/core/router/routes.dart';
import 'package:apexive_test/feature/timer/presentation/page/create_timesheet_screen.dart';
import 'package:apexive_test/feature/timer/presentation/page/timer_screen.dart';
import 'package:apexive_test/feature/timer/presentation/page/timesheet_details_screen.dart';
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
    GoRoute(
      path: Routes.timeSheetDetailScreen,
      builder: (context, state) => const TimeSheetDetailScreen(),
    ),
  ],
);
