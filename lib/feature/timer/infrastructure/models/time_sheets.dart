import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_sheets.freezed.dart';
part 'time_sheets.g.dart';

@freezed
class TimeSheets with _$TimeSheets {
  const factory TimeSheets({
    required String projectName,
    required String taskName,
    required String description,
    required String createdAt,
    @Default(Duration(seconds: 0)) Duration duration,
  }) = _TimeSheets;
  factory TimeSheets.fromJson(Map<String, dynamic> json) =>
      _$TimeSheetsFromJson(json);
}
