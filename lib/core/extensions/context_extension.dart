import 'package:another_flushbar/flushbar.dart';
import 'package:apexive_test/feature/timer/cubit/current_time_sheets_cubit.dart';
import 'package:apexive_test/feature/timer/cubit/timer_cubit.dart';
import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

extension BuildContextExtension on BuildContext {
  //get current timesheets for detail page
  TimeSheets? get getCurrentTimeSheets {
    final currentTimeSheetId = watch<CurrentTimeSheetsCubit>().state?.id;
    final currentTimeSheets = watch<TimerCubit>()
        .state
        .where((element) => element.id == currentTimeSheetId)
        .toList();
    if (currentTimeSheets.isEmpty) return null;
    return currentTimeSheets.first;
  }

  Future<void> showFlushBar({
    required BuildContext context,
    required String message,
    double? verticalMargin,
    bool error = false,
    int? duration,
  }) async {
    Flushbar<void>(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      messageText: Text(
        message,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      icon: const Icon(
        Icons.check_circle,
        color: Colors.white,
      ),
      duration: Duration(milliseconds: duration ?? 4000),
      borderRadius: BorderRadius.circular(10),
      flushbarStyle: FlushbarStyle.FLOATING,
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 20,
      ),
    ).show(context);
  }
}
