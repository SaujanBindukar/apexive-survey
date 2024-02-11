import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  void changeTheme() {
    emit(
      state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light,
    );
  }
}
