import 'package:apexive_test/core/widgets/custom_button.dart';
import 'package:apexive_test/core/widgets/gradient_body.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit.dart';
import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateTimeSheetScreen extends StatelessWidget {
  const CreateTimeSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBody(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                const _Header(),
                Expanded(
                  child: Column(
                    children: [
                      CustomButton(
                        label: 'Create Timer',
                        onPressed: () {
                          context.read<TimerCubit>().addTimeSheets(
                                timeSheets: TimeSheets(
                                  projectName: 'Project1',
                                  taskName: 'Task 1',
                                  description: 'Description1',
                                  createdAt: DateTime.now().toString(),
                                ),
                              );

                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
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
  const _Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        Text(
          'Create Timer',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(),
      ],
    );
  }
}
