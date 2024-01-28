import 'package:apexive_test/core/extensions/date_extension.dart';
import 'package:apexive_test/core/extensions/duration_extension.dart';
import 'package:apexive_test/core/router/routes.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit.dart';
import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TimeSheetTile extends StatefulWidget {
  const TimeSheetTile({
    super.key,
    required this.timeSheets,
    required this.index,
  });
  final TimeSheets timeSheets;
  final int index;

  @override
  State<TimeSheetTile> createState() => _TimeSheetTileState();
}

class _TimeSheetTileState extends State<TimeSheetTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.timeSheetDetailScreen);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        child: IntrinsicHeight(
          child: Row(
            children: [
              const VerticalDivider(
                color: Color(0xffFFC629),
                thickness: 2,
              ),
              const SizedBox(width: 4),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(widget.timeSheets.isFavourite
                            ? Icons.star
                            : Icons.star_border),
                        const SizedBox(width: 8),
                        Text(
                          widget.timeSheets.taskName ?? '',
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Icon(Icons.business_center_outlined),
                          const SizedBox(width: 8),
                          Text(
                            widget.timeSheets.projectName ?? '',
                            style: Theme.of(context).textTheme.bodyMedium,
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.schedule),
                        const SizedBox(width: 8),
                        const Text('Deadline: '),
                        Text(
                          widget.timeSheets.createdAt.formattedDate,
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              BlocBuilder<TimerCubit, List<TimeSheets>>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      if (state[widget.index].hasStarted) {
                        context
                            .read<TimerCubit>()
                            .stopTimer(index: widget.index);
                        return;
                      }
                      context
                          .read<TimerCubit>()
                          .startTimer(index: widget.index);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: state[widget.index].hasStarted
                            ? Colors.white
                            : Theme.of(context).colorScheme.secondaryContainer,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Text(
                            state[widget.index].duration.getDuration(),
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                                ?.copyWith(
                                  color: state[widget.index].hasStarted
                                      ? Colors.black
                                      : Colors.white,
                                ),
                          ),
                          Icon(
                            state[widget.index].hasStarted
                                ? Icons.pause
                                : Icons.play_arrow,
                            color: state[widget.index].hasStarted
                                ? Colors.black
                                : Colors.white,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
