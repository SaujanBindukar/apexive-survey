import 'package:apexive_test/feature/timer/infrastructure/models/time_sheets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CurrentTimeSheetsCubit extends Cubit<TimeSheets?> {
  CurrentTimeSheetsCubit() : super(null);

  void setCurrentTimeSheets({required TimeSheets timeSheets}) {
    emit(timeSheets);
  }
}
