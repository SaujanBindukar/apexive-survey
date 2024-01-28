import 'package:apexive_test/core/extensions/context_extension.dart';
import 'package:apexive_test/core/theme/app_colors.dart';
import 'package:apexive_test/core/utils/fake_data.dart';
import 'package:apexive_test/core/widgets/custom_button.dart';
import 'package:apexive_test/core/widgets/gradient_body.dart';
import 'package:apexive_test/feature/timer/cubit/time_sheet_data_cubit/time_sheet_data_cubit.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit/timer_cubit.dart';
import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class CreateTimeSheetScreen extends StatelessWidget {
  const CreateTimeSheetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => TimeSheetDataCubit(),
      child: BlocBuilder<TimeSheetDataCubit, TimeSheets>(
        builder: (context, state) {
          return Scaffold(
            body: GradientBody(
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      const _Header(),
                      Expanded(
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            DropdownButtonFormField<String>(
                              value: state.projectName,
                              hint: Text(
                                'Project',
                                style: textTheme.bodyLarge,
                              ),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                              dropdownColor: AppColors.backgroundColor,
                              items: FakeData.projectList
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                context
                                    .read<TimeSheetDataCubit>()
                                    .setProjectName(projectName: value ?? '');
                              },
                            ),
                            const SizedBox(height: 20),
                            DropdownButtonFormField<String>(
                              value: state.taskName,
                              hint: Text(
                                'Task',
                                style: textTheme.bodyLarge,
                              ),
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                              ),
                              dropdownColor: AppColors.backgroundColor,
                              items: FakeData.taskList
                                  .map(
                                    (e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e),
                                    ),
                                  )
                                  .toList(),
                              onChanged: (value) {
                                context
                                    .read<TimeSheetDataCubit>()
                                    .setTaskName(taskName: value ?? '');
                              },
                            ),
                            const SizedBox(height: 20),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Description',
                                hintStyle: textTheme.bodyLarge,
                              ),
                              onChanged: (value) {
                                context
                                    .read<TimeSheetDataCubit>()
                                    .setDescription(description: value);
                              },
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Checkbox(
                                    value: state.isFavourite,
                                    onChanged: (value) {
                                      context
                                          .read<TimeSheetDataCubit>()
                                          .setIsFavourite(isFavourite: value!);
                                    },
                                  ),
                                ),
                                const SizedBox(width: 20),
                                Text(
                                  'Make Favourite',
                                  style: textTheme.bodyLarge,
                                )
                              ],
                            ),
                            const Spacer(),
                            CustomButton(
                                label: 'Create Timer',
                                onPressed: () {
                                  onCreateTimer(context: context);
                                })
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void onCreateTimer({required BuildContext context}) {
    final data = context.read<TimeSheetDataCubit>().state;
    if (data.projectName == null) {
      context.showFlushBar(context: context, message: 'Please select project');
      return;
    }
    if (data.taskName == null) {
      context.showFlushBar(context: context, message: 'Please select task');
      return;
    }
    if (data.description == null || data.description!.isEmpty) {
      context.showFlushBar(
          context: context, message: 'Please enter description');
      return;
    }

    context.read<TimerCubit>().addTimeSheets(
          timeSheets: TimeSheets(
            id: const Uuid().v1(),
            projectName: data.projectName,
            taskName: data.taskName,
            description: data.description,
            createdAt: DateTime.now(),
            isFavourite: data.isFavourite,
          ),
        );
    Navigator.of(context).pop();
    context.showFlushBar(context: context, message: 'Timesheet added');
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
          style: textTheme.headlineSmall,
        ),
        const SizedBox(),
      ],
    );
  }
}
