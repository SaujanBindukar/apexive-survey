import 'package:apexive_test/feature/timer/cubit/time_sheet_data_cubit/time_sheet_data_cubit.dart';
import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimesheetBlocBuilder extends BlocBuilder<TimeSheetDataCubit, TimeSheets> {
  TimesheetBlocBuilder({
    required super.builder,
    super.key,
    BlocBuilderCondition<TimeSheets>? buildWhen,
  }) : super(
          buildWhen: buildWhen ?? (previous, current) => previous != current,
        );
}
