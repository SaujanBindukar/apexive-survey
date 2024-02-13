import 'package:apexive_test/feature/timer/cubit/timer_cubit/timer_cubit.dart';
import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef TimerBuilder = BlocBuilder<TimerCubit, List<TimeSheets>>;

class TimerCubitBuilder extends TimerBuilder {
  TimerCubitBuilder({
    required super.builder,
    super.key,
    BlocBuilderCondition<List<TimeSheets>>? buildWhen,
  }) : super(
          buildWhen: buildWhen ?? (previous, current) => previous != current,
        );
}
