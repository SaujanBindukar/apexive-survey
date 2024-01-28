import 'package:apexive_test/core/extensions/date_extension.dart';
import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:flutter/material.dart';

class DeadlineLabel extends StatelessWidget {
  const DeadlineLabel({
    super.key,
    required this.timeSheets,
  });

  final TimeSheets timeSheets;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.schedule),
        const SizedBox(width: 8),
        const Text('Deadline: '),
        Text(
          timeSheets.createdAt.formattedDate,
          style: Theme.of(context).textTheme.bodyMedium,
        )
      ],
    );
  }
}

class ProjectLabel extends StatelessWidget {
  const ProjectLabel({
    super.key,
    required this.timeSheets,
  });

  final TimeSheets timeSheets;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          const Icon(Icons.business_center_outlined),
          const SizedBox(width: 8),
          Text(
            timeSheets.projectName ?? '',
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}

class TaskLabel extends StatelessWidget {
  const TaskLabel({
    super.key,
    required this.timeSheets,
  });

  final TimeSheets timeSheets;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(timeSheets.isFavourite ? Icons.star : Icons.star_border),
        const SizedBox(width: 8),
        Text(
          timeSheets.taskName ?? '',
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}
