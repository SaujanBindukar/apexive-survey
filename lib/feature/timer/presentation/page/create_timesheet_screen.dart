import 'package:apexive_test/core/extensions/context_extension.dart';
import 'package:apexive_test/core/utils/fake_data.dart';
import 'package:apexive_test/core/widgets/custom_button.dart';
import 'package:apexive_test/core/widgets/custom_dropdown.dart';
import 'package:apexive_test/core/widgets/gradient_body.dart';
import 'package:apexive_test/core/widgets/herader.dart';
import 'package:apexive_test/feature/timer/cubit/time_sheet_data_cubit/time_sheet_data_builder.dart';
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
    return const Scaffold(
      body: GradientBody(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Header(text: 'Create Timer'),
              _TimeSheetForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class _TimeSheetForm extends StatelessWidget {
  const _TimeSheetForm();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => TimeSheetDataCubit(),
      child: TimesheetBlocBuilder(builder: (context, state) {
        return Expanded(
          child: Column(
            children: [
              const SizedBox(height: 30),
              CustomDropdown<String?>(
                value: state.projectName,
                hintText: 'Project',
                items: FakeData.projectList,
                onChanged: (value) {
                  context
                      .read<TimeSheetDataCubit>()
                      .setProjectName(projectName: value ?? '');
                },
              ),
              CustomDropdown<String?>(
                value: state.taskName,
                items: FakeData.taskList,
                onChanged: (value) {
                  context.read<TimeSheetDataCubit>().setTaskName(
                        taskName: value ?? '',
                      );
                },
                hintText: 'Task',
              ),
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
              const _FavouriteButton(),
              const Spacer(),
              CustomButton(
                  label: 'Create Timer',
                  onPressed: () {
                    onCreateTimer(context: context);
                  })
            ],
          ),
        );
      }),
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

class _FavouriteButton extends StatelessWidget {
  const _FavouriteButton();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return TimesheetBlocBuilder(builder: (context, state) {
      return Row(
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
      );
    });
  }
}
