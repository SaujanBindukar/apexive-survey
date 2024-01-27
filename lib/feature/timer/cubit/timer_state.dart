part of 'timer_cubit.dart';

@immutable
sealed class TimerState {
  const TimerState();
}

final class TimerInitial extends TimerState {}

final class TimerLoading extends TimerState {}

final class TimerLoaded extends TimerState {}
