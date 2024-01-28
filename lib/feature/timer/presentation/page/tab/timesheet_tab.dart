import 'package:apexive_test/core/extensions/date_extension.dart';
import 'package:apexive_test/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TimeSheetTabView extends StatelessWidget {
  const TimeSheetTabView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.primaryContainer),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                DateTime.now().formattedDay,
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 4),
              Text(
                DateTime.now().formattedDate,
                style: textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              Text(
                'Start Time ${DateTime.now().formattedTime}',
                style: textTheme.bodySmall,
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '08:08:20',
                    style: textTheme.displaySmall,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor:
                              Theme.of(context).colorScheme.secondaryContainer,
                          child: Icon(
                            Icons.stop,
                            size: 30,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                          child: Icon(
                            Icons.pause_sharp,
                            size: 30,
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 0.2),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Description',
                    style: textTheme.bodySmall,
                  ),
                  const Icon(Icons.edit)
                ],
              ),
              const SizedBox(height: 10),
              Text(
                'Sync with Client, communicate, work on the new design with designer, new tasks preparation call with the front end',
                style: textTheme.bodyMedium,
              )
            ],
          ),
        ),
      ],
    );
  }
}
