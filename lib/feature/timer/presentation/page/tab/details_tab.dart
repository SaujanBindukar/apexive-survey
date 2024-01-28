import 'package:apexive_test/core/extensions/context_extension.dart';
import 'package:apexive_test/core/extensions/date_extension.dart';
import 'package:apexive_test/feature/timer/presentation/widget/description_tile.dart';
import 'package:flutter/material.dart';

class DetailsTabView extends StatelessWidget {
  const DetailsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentTimeSheets = context.getCurrentTimeSheets;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    if (currentTimeSheets == null) {
      return const Center(child: CircularProgressIndicator());
    }
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Project',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 8),
              IntrinsicHeight(
                child: Row(
                  children: [
                    const VerticalDivider(
                      width: 0,
                      color: Colors.yellow,
                      thickness: 2,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      currentTimeSheets.projectName ?? '',
                      style: textTheme.titleMedium,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Deadline',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 4),
              Text(
                currentTimeSheets.createdAt.formattedDate,
                style: textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              Text(
                'Asssigned to',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 4),
              Text(
                'Saujan Bindukar',
                style: textTheme.titleMedium,
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: DescriptionWidget(
            description: currentTimeSheets.description ?? '',
          ),
        )
      ],
    );
  }
}
