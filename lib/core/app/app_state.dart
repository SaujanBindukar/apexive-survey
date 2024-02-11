import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.g.dart';
part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(ThemeMode.light) ThemeMode themeMode,
  }) = _AppState;
  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
