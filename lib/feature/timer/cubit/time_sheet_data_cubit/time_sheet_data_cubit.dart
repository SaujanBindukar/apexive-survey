import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimeSheetDataCubit extends Cubit<TimeSheets> {
  TimeSheetDataCubit()
      : super(
          TimeSheets(
            id: '',
            description: '',
            createdAt: DateTime.now(),
            isFavourite: false,
          ),
        );

  void setProjectName({required String projectName}) {
    final newData = state.copyWith(projectName: projectName);
    emit(newData);
  }

  void setTaskName({required String taskName}) {
    final newData = state.copyWith(taskName: taskName);
    emit(newData);
  }

  void setDescription({required String description}) {
    final newData = state.copyWith(description: description);
    emit(newData);
  }

  void setIsFavourite({required bool isFavourite}) {
    final newData = state.copyWith(isFavourite: isFavourite);
    emit(newData);
  }
}
