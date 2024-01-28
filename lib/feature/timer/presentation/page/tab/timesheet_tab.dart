import 'package:apexive_test/core/extensions/context_extension.dart';
import 'package:apexive_test/core/extensions/date_extension.dart';
import 'package:apexive_test/core/extensions/duration_extension.dart';
import 'package:apexive_test/core/widgets/circular_icon_button.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit/timer_cubit.dart';
import 'package:apexive_test/feature/timer/presentation/widget/description_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeSheetTabView extends StatelessWidget {
  const TimeSheetTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentTimeSheets = context.getCurrentTimeSheets;
    final textTheme = Theme.of(context).textTheme;
    if (currentTimeSheets == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                currentTimeSheets.createdAt.formattedDay,
                style: textTheme.bodySmall,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  currentTimeSheets.createdAt.formattedDate,
                  style: textTheme.titleMedium,
                ),
              ),
              Text(
                'Start Time ${currentTimeSheets.createdAt.formattedTime}',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 4),
              const _Duration(),
              const _Divider(),
              DescriptionWidget(
                description: currentTimeSheets.description ?? '',
                enableEdit: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Duration extends StatelessWidget {
  const _Duration();

  @override
  Widget build(BuildContext context) {
    final currentTimeSheets = context.getCurrentTimeSheets;
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          currentTimeSheets!.duration.getDuration(),
          style: textTheme.displaySmall,
        ),
        currentTimeSheets.isCompleted
            ? CircularIconButton(
                iconData: Icons.done,
                onPressed: () {},
              )
            : Row(
                children: [
                  CircularIconButton(
                    onPressed: () {
                      context.showFlushBar(
                        context: context,
                        message: 'Timesheet completed',
                      );
                      context
                          .read<TimerCubit>()
                          .completeTimer(timeSheets: currentTimeSheets);
                    },
                    iconData: Icons.stop,
                  ),
                  const SizedBox(width: 10),
                  CircularIconButton(
                    onPressed: () {
                      if (currentTimeSheets.hasStarted) {
                        context
                            .read<TimerCubit>()
                            .stopTimer(timeSheets: currentTimeSheets);
                        return;
                      }
                      context
                          .read<TimerCubit>()
                          .startTimer(timeSheets: currentTimeSheets);
                    },
                    backgroundColor:
                        Theme.of(context).colorScheme.onSecondaryContainer,
                    iconColor: Theme.of(context).colorScheme.secondaryContainer,
                    iconData: currentTimeSheets.hasStarted
                        ? Icons.pause_sharp
                        : Icons.play_arrow_sharp,
                  )
                ],
              )
      ],
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 20),
        Divider(thickness: 0.2),
        SizedBox(height: 10),
      ],
    );
  }
}
