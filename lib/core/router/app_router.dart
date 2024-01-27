import 'package:apexive_test/feature/timer/presentation/create_timesheet_screen.dart';
import 'package:apexive_test/feature/timer/presentation/timer_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const TimerScreen(),
    ),
    GoRoute(
      path: '/create-timesheet',
      builder: (context, state) => const CreateTimeSheetScreen(),
    ),
  ],
);
