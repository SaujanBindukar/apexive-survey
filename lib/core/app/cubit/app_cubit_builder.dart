import 'package:apexive_test/core/app/app_state/app_state.dart';
import 'package:apexive_test/core/app/cubit/app_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubitBuilder extends BlocBuilder<AppCubit, AppState> {
  AppCubitBuilder({
    required super.builder,
    super.key,
    BlocBuilderCondition<AppState>? buildWhen,
  }) : super(
          buildWhen: buildWhen ?? (previous, current) => previous != current,
        );
}
