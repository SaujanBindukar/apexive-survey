import 'package:apexive_test/core/router/routes.dart';
import 'package:apexive_test/core/widgets/gradient_body.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit.dart';
import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBody(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const _Header(),
                Expanded(
                  child: BlocConsumer<TimerCubit, List<TimeSheets>>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        if (state.isEmpty) {
                          return const EmptyTimerWidget();
                        }
                        return ListView.builder(
                          itemCount: state.length,
                          itemBuilder: (context, index) {
                            return TimeSheetTile(
                              timeSheets: state[index],
                              index: index,
                            );
                          },
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
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
        IconButton.filled(
          onPressed: () {
            context.push(Routes.createTimeSheetScreen);
          },
          icon: const Icon(
            Icons.add,
            size: 30,
          ),
        )
      ],
    );
  }
}
