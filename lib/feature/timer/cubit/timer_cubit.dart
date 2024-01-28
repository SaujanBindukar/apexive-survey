import 'dart:async';

import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class TimerCubit extends HydratedCubit<List<TimeSheets>> {
  TimerCubit() : super([]);

  @override
  Future<void> close() {
    for (var element in state) {
      element.timer?.cancel();
    }
    return super.close();
  }

  void addTimeSheets({required TimeSheets timeSheets}) async {
    final timeSheetList = [...state, timeSheets];
    emit(timeSheetList);
  }

  void startTimer({required int index}) {
    Timer? timer = state[index].timer;
    timer = Timer.periodic(const Duration(seconds: 1), (timer1) {
      final currentTimeSheets = state[index];
      final newTimeSheets = currentTimeSheets.copyWith(
        hasStarted: true,
        duration: Duration(
          seconds: currentTimeSheets.duration.inSeconds + 1,
        ),
        createdAt: DateTime.now(),
        timer: timer,
      );
      final updatedState = List<TimeSheets>.from(state);
      updatedState[index] = newTimeSheets;

      emit(updatedState);
    });
  }

  void stopTimer({required int index}) {
    state[index].timer?.cancel();
    final updatedState = List<TimeSheets>.from(state);
    updatedState[index] = state[index].copyWith(
      hasStarted: false,
    );
    emit(updatedState);
  }

  @override
  List<TimeSheets>? fromJson(Map<String, dynamic> json) {
    if (json['timeSheetsList'] == null || json['timeSheetsList'].isEmpty) {
      return [];
    }
    final listData = json['timeSheetsList'] as List<dynamic>;
    return listData
        .map((e) => TimeSheets.fromJson(e).copyWith(hasStarted: false))
        .toList();
  }

  @override
  Map<String, dynamic>? toJson(List<TimeSheets> state) {
    return {'timeSheetsList': state.map((e) => e.toJson()).toList()};
  }
}
