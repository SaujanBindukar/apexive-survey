extension DateExtension on DateTime {
  String get formattedDate =>
      '${year.toString().padLeft(4, '0')}/${month.toString().padLeft(2, '0')}/${day.toString().padLeft(2, '0')}';
}
