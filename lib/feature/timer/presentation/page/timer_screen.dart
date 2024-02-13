import 'package:apexive_test/core/app/cubit/app_cubit.dart';
import 'package:apexive_test/core/app/cubit/app_cubit_builder.dart';
import 'package:apexive_test/core/router/routes.dart';
import 'package:apexive_test/core/widgets/gradient_body.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit/timer_cubit.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit/timer_cubit_builder.dart';
import 'package:apexive_test/feature/timer/presentation/widget/empty_timer_widget.dart';
import 'package:apexive_test/feature/timer/presentation/widget/timesheet_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBody(
        child: Column(
          children: [
            const _Header(),
            Expanded(
              child: TimerCubitBuilder(
                builder: (context, state) {
                  if (state.isEmpty) {
                    return const EmptyTimerWidget();
                  }
                  return const _TimeListBuilder();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TimeListBuilder extends StatelessWidget {
  const _TimeListBuilder();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<TimerCubit>().state;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'You have ${state.length} timers',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.length,
            itemBuilder: (context, index) {
              return TimeSheetTile(
                timeSheets: state[index],
                index: index,
              );
            },
          ),
        ),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Timesheets',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const _ThemeToggleSwitch(),
        IconButton.filled(
          onPressed: () {
            context.push(Routes.createTimeSheetScreen);
          },
          icon: const Icon(
            Icons.add,
            size: 30,
          ),
        ),
      ],
    );
  }
}

class _ThemeToggleSwitch extends StatelessWidget {
  const _ThemeToggleSwitch();

  @override
  Widget build(BuildContext context) {
    return AppCubitBuilder(
      builder: (context, state) {
        return Switch.adaptive(
          value: state.themeMode == ThemeMode.light,
          onChanged: (value) {
            context.read<AppCubit>().updateTheme(
                  themeMode: state.themeMode == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light,
                );
          },
        );
      },
    );
  }
}
