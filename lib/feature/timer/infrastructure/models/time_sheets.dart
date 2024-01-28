import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_sheets.freezed.dart';
part 'time_sheets.g.dart';

@freezed
class TimeSheets with _$TimeSheets {
  const factory TimeSheets({
    required String id,
    String? projectName,
    String? taskName,
    required String? description,
    required DateTime createdAt,
    @Default(false) bool isFavourite,
    @Default(false) bool hasStarted,
    @Default(false) bool isCompleted,
    @Default(Duration(seconds: 0)) Duration duration,
    @JsonKey(includeFromJson: false) Timer? timer,
  }) = _TimeSheets;
  factory TimeSheets.fromJson(Map<String, dynamic> json) =>
      _$TimeSheetsFromJson(json);
}
